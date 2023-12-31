using EatIt.Models;
using EatIt.Views;
using Plugin.CloudFirestore;
using Plugin.FirebaseAuth;
using Plugin.FirebaseStorage;
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
    public class AddedRecipesViewModel : ViewModelBase
    {
        // Collections
        private ObservableCollection<Dish> _addedDishesByCurrentUser;
        public ObservableCollection<Dish> AddedDishesByCurrentUser
        {
            get { return _addedDishesByCurrentUser; }
            set
            {
                _addedDishesByCurrentUser = value;
                OnPropertyChanged(nameof(AddedDishesByCurrentUser));
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
        public ICommand RemoveRecepieCommand { get; set; }
        public ICommand OpenAddEditCommaand { get; set; }
        public ICommand FilterAddedRecepiesCommand { get; set; }
        public ICommand SearchCommand { get; set; }
        public INavigation Navigation { get; set; }

        // Constructor
        public AddedRecipesViewModel(INavigation navigation)
        {
            Navigation = navigation;

            PageAppearingCommand = new Command(async () =>
            {

                if (SelectedCategoryToFiltrIndex == -1 && SearchText == null)
                {
                    AddedDishesByCurrentUser = await GetAddedDishesByCurrentUser();
                }


                if (SelectedCategoryToFiltrIndex != -1 || SearchText != null)
                {
                    SearchText = _lastSearchedWord;
                    SelectedCategoryToFiltrIndex = _lastSelectedCategoryIndex;
                }
            });

            RemoveRecepieCommand = new Command(RemoveRecepie);

            DishCategory dishCategories = new DishCategory();
            CategoryOfDishes = new ObservableCollection<string>(GetDisplayNames(dishCategories));
            CategoryOfDishes.Add("Show All");

            FilterAddedRecepiesCommand = new Command(async () => await FilterRecepies());
            SearchCommand = new Command(async () => await SearchInCurrentListAsync());
            OpenAddEditCommaand = new Command(OpenAddEditPage);
        }

        //Methods

        // Pick a change in SearchBar
        private async Task SearchInCurrentListAsync()
        {
            if (SearchText != null)
            {
                if(SelectedCategoryToFiltrIndex != -1)
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
                    AddedDishesByCurrentUser = tempList;
                    Debug.WriteLine("Pusty wiersz - Lista z kategori");
                }
                else
                {
                    var listOfRecepies = await GetAddedDishesByCurrentUser();
                    var tempList = new ObservableCollection<Dish>();

                    foreach (var recepie in listOfRecepies)
                    {
                        if (recepie.Title.CaseInsensitive(SearchText))
                        {
                            tempList.Add(recepie);
                        }
                    }
                    AddedDishesByCurrentUser = tempList;
                    Debug.WriteLine("Pusty wiersz - Wszystko");
                }
               

            }
            if (SearchText == "" && SelectedCategoryToFiltrIndex != -1)
            {
                if (SelectedCategoryToFiltrIndex != CategoryOfDishes.IndexOf(CategoryOfDishes.Last()))
                {
                    var listOfRecepies = await GetAddedDishesByCurrentUser();
                    var tempList = new ObservableCollection<Dish>();

                    foreach (var recepie in listOfRecepies)
                    {
                        if (recepie.Category == (DishCategory)SelectedCategoryToFiltrIndex)
                        {
                            tempList.Add(recepie);
                        }
                    }
                    AddedDishesByCurrentUser = tempList;
                }
                else
                {
                    AddedDishesByCurrentUser = await GetAddedDishesByCurrentUser();
                }

            }
        }
        private async Task FilterRecepies()
        {
            var listOfRecepies = await GetAddedDishesByCurrentUser();
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

                    AddedDishesByCurrentUser = tempList;
                    _dishesFromCurrentCategory = tempList;
                    SearchText = null;
                }
                else
                {
                    AddedDishesByCurrentUser = await GetAddedDishesByCurrentUser();
                    _dishesFromCurrentCategory = AddedDishesByCurrentUser;
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
        private async void RemoveRecepie(object sender)
        {
            var result = await App.Current.MainPage.DisplayAlert("Remove recepie", "Are you sure you want to remove this recepie from EatIt?", "Yes", "No");
            if (result)
            {
                // Get image url to remove
                var document = await CrossCloudFirestore.Current
                                        .Instance
                                        .Collection(Dish.CollectionPath)
                                        .Document(sender.ToString())
                                        .GetAsync();

                var recipe = document.ToObject<Dish>();

                // Remove image from Firebase Storage
                var reference = CrossFirebaseStorage.Current.Instance.GetReferenceFromUrl(recipe.ImageUrl);
                await reference.DeleteAsync();


                // Delete document
                await CrossCloudFirestore.Current
                         .Instance
                         .Collection(Dish.CollectionPath)
                         .Document(sender.ToString())
                         .DeleteAsync();

                AddedDishesByCurrentUser = await GetAddedDishesByCurrentUser();

                SearchText = "";
                SelectedCategoryToFiltrIndex = -1;
            }
        }      
        private void OpenAddEditPage(object sender)
        {
            Navigation.PushAsync(new AddEditRecipeView(sender.ToString()));
            _lastSearchedWord = SearchText;
            _lastSelectedCategoryIndex = SelectedCategoryToFiltrIndex;
        }
        private async Task<ObservableCollection<Dish>> GetAddedDishesByCurrentUser()
        {
            ObservableCollection<Dish> temp = new ObservableCollection<Dish>();

            try
            {
                var query = await CrossCloudFirestore.Current
                                                     .Instance
                                                     .Collection(Dish.CollectionPath)
                                                     .WhereEqualsTo("authorId", CrossFirebaseAuth.Current.Instance.CurrentUser.Uid)
                                                     .GetAsync();

                var addedByUser = query.ToObjects<Dish>().ToList();
                temp = new ObservableCollection<Dish>(addedByUser);
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
