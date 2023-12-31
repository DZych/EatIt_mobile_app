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
    public class FindNewRecipeViewModel : ViewModelBase
    {
        // Collections
        private ObservableCollection<Dish> _allAvailableRecipes;
        public ObservableCollection<Dish> AllAvailableRecipes
        {
            get { return _allAvailableRecipes; }
            set
            {
                _allAvailableRecipes = value;
                OnPropertyChanged(nameof(AllAvailableRecipes));
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

        //Commands
        public ICommand PageAppearingCommand { get; set; }
        public ICommand FilterAllAvailableRecipesCommand { get; set; }
        public ICommand OpenDetailsCommand { get; set; }
        public ICommand SearchCommand { get; set; }
        public INavigation Navigation { get; set; }

        // Constructor
        public FindNewRecipeViewModel(INavigation navigation)
        {
            Navigation = navigation;

            PageAppearingCommand = new Command(async () =>
            {
                if (SelectedCategoryToFiltrIndex == -1 && SearchText == null)
                {
                    AllAvailableRecipes = await GetAllAvailableRecipes();
                }


                if (SelectedCategoryToFiltrIndex != -1 || SearchText != null)
                {
                    SearchText = _lastSearchedWord;
                    SelectedCategoryToFiltrIndex = _lastSelectedCategoryIndex;
                }
            });

            DishCategory dishCategories = new DishCategory();
            CategoryOfDishes = new ObservableCollection<string>(GetDisplayNames(dishCategories));
            CategoryOfDishes.Add("Show All");

            FilterAllAvailableRecipesCommand = new Command(async () => await FilterRecepies());
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
                    AllAvailableRecipes = tempList;
                    Debug.WriteLine("Pusty wiersz - Lista z kategori");
                }
                else
                {
                    var listOfRecepies = await GetAllAvailableRecipes();
                    var tempList = new ObservableCollection<Dish>();

                    foreach (var recepie in listOfRecepies)
                    {
                        if (recepie.Title.CaseInsensitive(SearchText))
                        {
                            tempList.Add(recepie);
                        }
                    }
                    AllAvailableRecipes = tempList;
                    Debug.WriteLine("Pusty wiersz - Wszystko");
                }


            }
            if (SearchText == "" && SelectedCategoryToFiltrIndex != -1)
            {
                if (SelectedCategoryToFiltrIndex != CategoryOfDishes.IndexOf(CategoryOfDishes.Last()))
                {
                    var listOfRecepies = await GetAllAvailableRecipes();
                    var tempList = new ObservableCollection<Dish>();

                    foreach (var recepie in listOfRecepies)
                    {
                        if (recepie.Category == (DishCategory)SelectedCategoryToFiltrIndex)
                        {
                            tempList.Add(recepie);
                        }
                    }
                    AllAvailableRecipes = tempList;
                }
                else
                {
                    AllAvailableRecipes = await GetAllAvailableRecipes();
                }

            }
        }
        private async Task FilterRecepies()
        {
            var listOfRecepies = await GetAllAvailableRecipes();
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

                    AllAvailableRecipes = tempList;
                    _dishesFromCurrentCategory = tempList;
                    SearchText = null;
                }
                else
                {
                    AllAvailableRecipes = await GetAllAvailableRecipes();
                    _dishesFromCurrentCategory = AllAvailableRecipes;
                    SearchText = null;
                }

            }
        }
        private async Task<ObservableCollection<Dish>> GetAllAvailableRecipes()
        {
            var temp = new ObservableCollection<Dish>();

            try
            {
                var queryDishes = await CrossCloudFirestore.Current
                                                     .Instance
                                                     .CollectionGroup(Dish.CollectionPath)
                                                     .GetAsync();

                var Dishes = queryDishes.ToObjects<Dish>().ToList();

                var queryFavourites = await CrossCloudFirestore.Current
                                                     .Instance
                                                     .Collection(Favorites.CollectionPath)
                                                     .WhereEqualsTo("userId", CrossFirebaseAuth.Current.Instance.CurrentUser.Uid)
                                                     .GetAsync();

                var favorites = queryFavourites.ToObjects<Favorites>().ToList();
                var favoritesRecepiesByUser = new List<Favorites>();

                foreach (var item in favorites)
                {
                    var document = await CrossCloudFirestore.Current
                                        .Instance
                                        .Collection(Dish.CollectionPath)
                                        .Document(item.DishId)
                                        .GetAsync();

                    var yourModel = document.ToObject<Dish>();
                    favoritesRecepiesByUser.Add(item);
                }

                var ListOfDishesNotLikedByUser = Dishes.Where(l1 => favoritesRecepiesByUser.All(l2 => l2.DishId != l1.Id));


                temp = new ObservableCollection<Dish>(ListOfDishesNotLikedByUser);


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
