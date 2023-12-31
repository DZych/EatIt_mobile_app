using EatIt.Models;
using EatIt.Views;
using Plugin.CloudFirestore;
using Plugin.FirebaseAuth;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace EatIt.ViewModels
{
    public class HomeViewModel : ViewModelBase
    {
        // Collections
        private ObservableCollection<Dish> _allFavoriteDishesOfCurrentUser;
        public ObservableCollection<Dish> AllFavoriteDishesOfCurrentUser 
        {
            get { return _allFavoriteDishesOfCurrentUser; }
            set
            {
                _allFavoriteDishesOfCurrentUser = value;
                OnPropertyChanged(nameof(AllFavoriteDishesOfCurrentUser));
            }
        }

        private ObservableCollection<Dish> _randomDishes;
        public ObservableCollection<Dish> RandomDishes
        {
            get { return _randomDishes; }
            set
            {
                _randomDishes = value;
                OnPropertyChanged(nameof(RandomDishes));
            }
        }

        // Commands
        public ICommand OpenDetailsCommand { get; set; }
        public ICommand OpenFavouriteRecepiesCommand { get; set; }
        public ICommand OpenFindNewRecepiesCommand { get; set; }
        public ICommand PageAppearingCommand { get; set; }
        public INavigation Navigation { get; internal set; }

        // Methods for Commands
        private void OpenDetails(object sender)
        {
            Navigation.PushAsync(new DetailsRecipeView(sender.ToString()));
        }

        public HomeViewModel(INavigation navigation)
        {
            // Pass navigation from view to viewModel
            this.Navigation = navigation;

            //Set Commands
            OpenDetailsCommand = new Command(OpenDetails);

            PageAppearingCommand = new Command(async () =>
            {
                AllFavoriteDishesOfCurrentUser = await GetAllFavoriteDishesOfCurrentUser();
                RandomDishes = await GetRandomDishes(3);
            });

            OpenFavouriteRecepiesCommand = new Command(async () =>
            {
                await Navigation.PushAsync(new FavouritesRecipesView());
            });

            OpenFindNewRecepiesCommand = new Command(async () =>
            {
                await Navigation.PushAsync(new FindNewRecipeView());
            });
        }

        #region Methods for downloading data from database
        public static async Task<ObservableCollection<Dish>> GetAllFavoriteDishesOfCurrentUser()
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

        public static async Task<ObservableCollection<Dish>> GetRandomDishes(int numberOfRandomDishes)
        {
            ObservableCollection<Dish> temp = new ObservableCollection<Dish>();
            List<Dish> temp2 = new List<Dish>();

            try
            {
                var query = await CrossCloudFirestore.Current
                                                     .Instance
                                                     .Collection(Dish.CollectionPath)
                                                     .GetAsync();


                var allDishes = query.ToObjects<Dish>().ToList();

                var secondQuery = await CrossCloudFirestore.Current
                                     .Instance
                                     .Collection(Favorites.CollectionPath)
                                     .WhereEqualsTo("userId", CrossFirebaseAuth.Current.Instance.CurrentUser.Uid)
                                     .GetAsync();

                var favoritesForUser = secondQuery.ToObjects<Favorites>();

                foreach (var favorite in favoritesForUser)
                {
                    var document = await CrossCloudFirestore.Current
                                   .Instance
                                   .Collection(Dish.CollectionPath)
                                   .Document(favorite.DishId).GetAsync();

                    Dish dish = document.ToObject<Dish>();

                    temp2.Add(dish);
                }

                var ListOfDishesNotLikedByUser = allDishes.Where(l1 => temp2.All(l2 => l2.Id != l1.Id)).ToList();

                var randomIndex = new Random();

                for (int i = 0; i < numberOfRandomDishes; i++)
                {
                    int index = randomIndex.Next(ListOfDishesNotLikedByUser.Count);

                    if (!temp.Contains(ListOfDishesNotLikedByUser[index]))
                    {
                        temp.Add(ListOfDishesNotLikedByUser[index]);
                    }
                }
                return temp;
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
                return temp;
            }
        }
        #endregion
    }
}
