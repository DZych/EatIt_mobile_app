using EatIt.Models;
using Plugin.CloudFirestore;
using System.Reactive.Linq;
using System.Reactive;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;
using Reactive.Bindings;
using System.Windows.Input;
using Xamarin.Forms;
using Xamarin.CommunityToolkit.ObjectModel;
using Plugin.FirebaseAuth;
using System.ComponentModel.DataAnnotations;
using System.Reflection;
using System.Runtime.InteropServices.ComTypes;

namespace EatIt.ViewModels
{
    public class DetailsRecipeViewModel : ViewModelBase
    {
        // Fields
        private Dish _dish;
        public Dish Dish
        {
            get { return _dish; }
            set
            {
                _dish = value;
                OnPropertyChanged(nameof(Dish));

            }
        }

        private string _dishCategoryToDisplay;
        public string DishCategoryToDisplay
        {
            get { return _dishCategoryToDisplay; }
            set
            {
                _dishCategoryToDisplay = value;
                OnPropertyChanged(nameof(DishCategoryToDisplay));
            }
        }

        private bool _isFavorite;
        public bool IsFavorite
        {
            get { return _isFavorite; }
            set
            {
                _isFavorite = value;
                OnPropertyChanged(nameof(IsFavorite));
            }
        }

        private string _imagePathToFavoriteButton;
        public string ImagePathToFavoriteButton
        {
            get { return _imagePathToFavoriteButton; }
            set
            {
                _imagePathToFavoriteButton = value;
                OnPropertyChanged(nameof(ImagePathToFavoriteButton));
            }
        }

        // Commands
        public ICommand ChangeStateOfDishCommand { get; set; }

        // Constructor
        public DetailsRecipeViewModel(string dishId)
        {
            GetDetailsAboutDish(dishId).ContinueWith(task =>
            {
                Dish = task.Result;
                DishCategoryToDisplay = GetDisplayNameFromEnum(task.Result.Category).ToUpper();
            });
            CheckIfDishIsInFavoriteByUser(dishId).ContinueWith(task =>
            {
                if (task.Result)
                {
                    ImagePathToFavoriteButton = "like.png";
                    IsFavorite = true;
                }
                else
                {
                    ImagePathToFavoriteButton = "not_like.png";
                    IsFavorite = false;
                }
            });
            ChangeStateOfDishCommand = new Command(async () => await ChangeStateOfDishAsync());
        }

        // Methods
        public async Task<Dish> GetDetailsAboutDish(string id)
        {
            try
            {
                var document = await CrossCloudFirestore.Current
                                       .Instance
                                       .Collection(Dish.CollectionPath)
                                       .Document(id).GetAsync();

                if (document.Exists)
                {
                    var dish = document.ToObject<Dish>();
                    return dish;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
                return null;
            }
        }
        public async Task<bool> CheckIfDishIsInFavoriteByUser(string id)
        {
            try
            {
                var query = await CrossCloudFirestore.Current
                                                     .Instance
                                                     .Collection(Favorites.CollectionPath)
                                                     .WhereEqualsTo("dishId", id)
                                                     .WhereEqualsTo("userId", CrossFirebaseAuth.Current.Instance.CurrentUser.Uid)
                                                     .GetAsync();

                var favorites = query.ToObjects<Favorites>().ToList();

                if (favorites.Count == 0)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
                return false;
            }
        }
        private async Task ChangeStateOfDishAsync()
        {
            if (IsFavorite)
            {
                Debug.WriteLine("Usunięcie z ulubionych");
                // Delete from favorites
                if (IsFavorite)
                {
                    var query = await CrossCloudFirestore.Current
                                                     .Instance
                                                     .Collection(Favorites.CollectionPath)
                                                     .WhereEqualsTo("dishId", Dish.Id)
                                                     .WhereEqualsTo("userId", CrossFirebaseAuth.Current.Instance.CurrentUser.Uid)
                                                     .GetAsync();

                    var favorites = query.ToObjects<Favorites>().ToList();

                    if (favorites.Count == 1)
                    {
                        await CrossCloudFirestore.Current
                         .Instance
                         .Collection(Favorites.CollectionPath)
                         .Document(favorites[0].Id)
                         .DeleteAsync();
                    }
                }

                ImagePathToFavoriteButton = "not_like.png";
                IsFavorite = false;
            }
            else
            {
                Debug.WriteLine("Dodanie do ulubionych");
                // Add to favorites
                string newRandomId = CrossCloudFirestore.Current.Instance.Collection("randomPath").Document().Id;
                string currentUserId = CrossFirebaseAuth.Current.Instance.CurrentUser.Uid;

                await CrossCloudFirestore.Current
                         .Instance
                         .Collection(Favorites.CollectionPath)
                         .Document(newRandomId)
                         .SetAsync(new { id = newRandomId, dishId = Dish.Id, userId = currentUserId });

                ImagePathToFavoriteButton = "like.png";
                IsFavorite = true;
            }
        }
        private string GetDisplayNameFromEnum(DishCategory dishCategory)
        {
            return dishCategory.GetType().GetMember(dishCategory.ToString())
                           .First()
                           .GetCustomAttribute<DisplayAttribute>()
                           .Name;
        }
    }
}
