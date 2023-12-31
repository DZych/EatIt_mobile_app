using EatIt.Models;
using EatIt.Views;
using Plugin.CloudFirestore;
using Plugin.FirebaseAuth;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace EatIt.ViewModels
{
    public class FavouritesRecipesViewModel : ViewModelBase
    {
        // Collections
        private ObservableCollection<Dish> _favoriteDishesOfCurrentUser;
        public ObservableCollection<Dish> FavoriteDishesOfCurrentUser
        {
            get { return _favoriteDishesOfCurrentUser; }
            set
            {
                _favoriteDishesOfCurrentUser = value;
                OnPropertyChanged(nameof(FavoriteDishesOfCurrentUser));
            }
        }

        private ObservableCollection<string> _categoryOfDishes;
        public ObservableCollection<string> CategoryOfDishes
        {
            get { return _categoryOfDishes; }
            set
            {
                _categoryOfDishes = value;
                OnPropertyChanged(nameof(CategoryOfDishes));
            }
        }
        private ObservableCollection<Dish> _dishesFromCurrentCategory { get; set; }

        // Fields
        private int _selectedCategoryToFiltrIndex = -1;
        public int SelectedCategoryToFiltrIndex
        {
            get { return _selectedCategoryToFiltrIndex; }
            set
            {
                _selectedCategoryToFiltrIndex = value;
                OnPropertyChanged(nameof(SelectedCategoryToFiltrIndex));
            }
        }

        private string _searchText;
        public string SearchText
        {
            get { return _searchText; }
            set { _searchText = value; OnPropertyChanged(nameof(SearchText)); }
        }

        private string _lastSearchedWord;
        private int _lastSelectedCategoryIndex;


        // Commands
        public ICommand PageAppearingCommand { get; set; }
        public ICommand RemoveFromFavoritesCommand { get; set; }
        public ICommand OpenDetailsCommand { get; set; }
        public ICommand FilterRecepiesByCategoryCommand { get; set; }
        public ICommand SearchCommand { get; set; }
        public INavigation Navigation { get; set; }


        // Constructor
        public FavouritesRecipesViewModel(INavigation navigation)
        {
            Navigation = navigation;
            PageAppearingCommand = new Command(async () =>
            {
                if(SelectedCategoryToFiltrIndex == -1 && SearchText == null)
                {
                    FavoriteDishesOfCurrentUser = await GetAllFavoriteDishesOfCurrentUser();
                }
                

                if (SelectedCategoryToFiltrIndex != -1 || SearchText != null)
                {
                    SearchText = _lastSearchedWord;
                    SelectedCategoryToFiltrIndex = _lastSelectedCategoryIndex;
                }
            });

            RemoveFromFavoritesCommand = new Command(RemoveFromFavorites);

            DishCategory dishCategories = new DishCategory();
            CategoryOfDishes = new ObservableCollection<string>(GetDisplayNames(dishCategories));
            CategoryOfDishes.Add("Show All");

            FilterRecepiesByCategoryCommand = new Command(async () => await FilterRecepiesByCategory());
            SearchCommand = new Command(async () => await SearchInCurrentListAsync());

            OpenDetailsCommand = new Command(OpenDetails);
        }

        // Methods
        private void OpenDetails(object sender)
        {
            Navigation.PushAsync(new DetailsRecipeView(sender.ToString()));
            _lastSearchedWord = SearchText;
            _lastSelectedCategoryIndex = SelectedCategoryToFiltrIndex;
            
        }

        // Pick a change in SearchBar
        private async Task SearchInCurrentListAsync()
        {
            if (SearchText != null)
            {
                if (SelectedCategoryToFiltrIndex != -1)
                {
                    var listOfRecepies = _dishesFromCurrentCategory;
                    var tempList = new ObservableCollection<Dish>();

                    foreach (var recepie in listOfRecepies)
                    {
                        if (recepie.Title.CaseInsensitive(SearchText))
                        {
                            tempList.Add(recepie);
                        }
                    }
                    FavoriteDishesOfCurrentUser = tempList;
                    Debug.WriteLine("Pusty wiersz - Lista z kategori");
                }
                else
                {
                    var listOfRecepies = await GetAllFavoriteDishesOfCurrentUser();
                    var tempList = new ObservableCollection<Dish>();

                    foreach (var recepie in listOfRecepies)
                    {
                        if (recepie.Title.CaseInsensitive(SearchText))
                        {
                            tempList.Add(recepie);
                        }
                    }
                    FavoriteDishesOfCurrentUser = tempList;
                    Debug.WriteLine("Pusty wiersz - Wszystko");
                }


            }
            if (SearchText == "" && SelectedCategoryToFiltrIndex != -1)
            {
                if (SelectedCategoryToFiltrIndex != CategoryOfDishes.IndexOf(CategoryOfDishes.Last()))
                {
                    var listOfRecepies = await GetAllFavoriteDishesOfCurrentUser();
                    var tempList = new ObservableCollection<Dish>();

                    foreach (var recepie in listOfRecepies)
                    {
                        if (recepie.Category == (DishCategory)SelectedCategoryToFiltrIndex)
                        {
                            tempList.Add(recepie);
                        }
                    }
                    FavoriteDishesOfCurrentUser = tempList;
                }
                else
                {
                    FavoriteDishesOfCurrentUser = await GetAllFavoriteDishesOfCurrentUser();
                }

            }
        }

        // Pick a category
        private async Task FilterRecepiesByCategory()
        {
            var listOfRecepies = await GetAllFavoriteDishesOfCurrentUser();
            var tempList = new ObservableCollection<Dish>();

            if (SelectedCategoryToFiltrIndex != -1)
            {
                if (SelectedCategoryToFiltrIndex != CategoryOfDishes.IndexOf(CategoryOfDishes.Last()))
                {
                    foreach (var recepie in listOfRecepies)
                    {
                        if (recepie.Category == (DishCategory)SelectedCategoryToFiltrIndex)
                        {
                            tempList.Add(recepie);
                        }
                    }

                    FavoriteDishesOfCurrentUser = tempList;
                    _dishesFromCurrentCategory = tempList;
                    SearchText = null;
                }
                else
                {
                    FavoriteDishesOfCurrentUser = await GetAllFavoriteDishesOfCurrentUser();
                    _dishesFromCurrentCategory = FavoriteDishesOfCurrentUser;
                    SearchText = null;
                }

            }
        }
        private List<string> GetDisplayNames(Enum enm)
        {
            var type = enm.GetType();
            var displaynames = new List<string>();
            var names = Enum.GetNames(type);
            foreach (var name in names)
            {
                var field = type.GetField(name);
                var fds = field.GetCustomAttributes(typeof(DisplayAttribute), true);

                if (fds.Length == 0)
                {
                    displaynames.Add(name);
                }

                foreach (DisplayAttribute fd in fds)
                {
                    displaynames.Add(fd.Name);
                }
            }
            return displaynames;
        }
        private async void RemoveFromFavorites(object sender)
        {
            var result = await App.Current.MainPage.DisplayAlert("Remove from favouriets", "Are you sure you want remove this recepie from favouriets?", "Yes", "No");

            if (result)
            {
                var query = await CrossCloudFirestore.Current
                                     .Instance
                                     .Collection(Favorites.CollectionPath)
                                     .WhereEqualsTo("userId", CrossFirebaseAuth.Current.Instance.CurrentUser.Uid)
                                     .WhereEqualsTo("dishId", sender.ToString())
                                     .GetAsync();

                var favoriteList = query.ToObjects<Favorites>().ToList();

                if (favoriteList.Count == 1)
                {
                    var favorite = favoriteList[0];

                    await CrossCloudFirestore.Current
                             .Instance
                             .Collection(Favorites.CollectionPath)
                             .Document(favorite.Id)
                             .DeleteAsync();
                }

                FavoriteDishesOfCurrentUser = await GetAllFavoriteDishesOfCurrentUser();

                if (SelectedCategoryToFiltrIndex != -1 || SearchText != null)
                {
                    await FilterRecepiesByCategory();
                    await SearchInCurrentListAsync();
                }

            }

        }
        private async Task<ObservableCollection<Dish>> GetAllFavoriteDishesOfCurrentUser()
        {
            ObservableCollection<Dish> temp = new ObservableCollection<Dish>();

            try
            {
                var query = await CrossCloudFirestore.Current
                                                     .Instance
                                                     .Collection(Favorites.CollectionPath)
                                                     .WhereEqualsTo("userId", CrossFirebaseAuth.Current.Instance.CurrentUser.Uid)
                                                     .GetAsync();

                var favoritesForUser = query.ToObjects<Favorites>();

                foreach (var favorite in favoritesForUser)
                {
                    var document = await CrossCloudFirestore.Current
                                   .Instance
                                   .Collection(Dish.CollectionPath)
                                   .Document(favorite.DishId).GetAsync();

                    Dish dish = document.ToObject<Dish>();

                    temp.Add(dish);
                }
                return temp;
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
                return temp;
            }
        }
    }
}
