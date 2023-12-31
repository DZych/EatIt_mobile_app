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
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.CommunityToolkit.Extensions;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace EatIt.ViewModels
{
    public class AddEditRecipeViewModel : ViewModelBase
    {
        //Collections

        private ObservableCollection<string> _ingredients;
        public ObservableCollection<string> Ingredients
        {
            get { return _ingredients; }
            set
            {
                _ingredients = value;
                OnPropertyChanged(nameof(Ingredients));
            }
        }

        private ObservableCollection<string> _steps;
        public ObservableCollection<string> Steps
        {
            get { return _steps; }
            set
            {
                _steps = value;
                OnPropertyChanged(nameof(Steps));
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

        // Fields
        private bool isOpenAsEddit;
        private bool imageWasChanged;
        private string _imageFilePath { get; set; }

        private ImageSource _imgFromGallery;
        public ImageSource ImgFromGallery
        {
            get { return _imgFromGallery; }
            set
            {
                _imgFromGallery = value; OnPropertyChanged(nameof(ImgFromGallery));
            }
        }

        private Dish _dishToAddEdit;
        public Dish DishToAddEdit
        {
            get { return _dishToAddEdit; }
            set { _dishToAddEdit = value; OnPropertyChanged(nameof(DishToAddEdit)); }
        }

        private string _textToStepList;
        public string TextToStepList
        {
            get { return _textToStepList; }
            set
            {
                _textToStepList = value; OnPropertyChanged(nameof(TextToStepList));
            }
        }

        private string _textToIngredientList;
        public string TextToIngredientList
        {
            get { return _textToIngredientList; }
            set
            {
                _textToIngredientList = value; OnPropertyChanged(nameof(TextToIngredientList));
            }
        }
        public string SelectedStep { get; set; }
        public string SelectedIngredient { get; set; }

        private int _selectedCategoryIndex = -1;
        public int SelectedCategoryIndex
        {
            get { return _selectedCategoryIndex; }
            set
            {
                _selectedCategoryIndex = value;
                OnPropertyChanged(nameof(SelectedCategoryIndex));
            }
        }

        public string NavigationBarTitle { get;set; }
        public string AddEdditButtonText { get;set; }
        public string AddEditImageText { get;set; }



        //Commands
        public INavigation Navigation { get; set; }
        public ICommand OpenImageCommand { get; set; }
        public ICommand AddToIngredientsCommand { get; set; }
        public ICommand AddToStepsCommand { get; set; }
        public ICommand RemoveStepCommand { get;set; }
        public ICommand RemoveIngredientCommand { get; set; }
        public ICommand CancelAddingCommand { get; set; }
        public ICommand AddEditRecepieCommand { get; set; }

        // Constructor
        public AddEditRecipeViewModel(INavigation navigation)
        {
            Navigation = navigation;
            NavigationBarTitle = "Add Recepie";
            AddEdditButtonText = "Add Recepie";
            AddEditImageText = "Add Image";

            OpenImageCommand = new Command(async() => await LoadImage());
            AddToIngredientsCommand = new Command(AddToIngredients);
            AddToStepsCommand = new Command(AddToSteps);
            RemoveStepCommand = new Command(RemoveStepFromList);
            RemoveIngredientCommand = new Command(RemoveIngredientFromList);
            CancelAddingCommand = new Command(CancelAdding);
            AddEditRecepieCommand = new Command(async() => await AddRecepie());

            DishToAddEdit = new Dish();
            Ingredients = new ObservableCollection<string>();
            Steps = new ObservableCollection<string>();

            DishCategory dishCategories = new DishCategory();
            CategoryOfDishes = new ObservableCollection<string>(GetDisplayNames(dishCategories));


        }

        public AddEditRecipeViewModel(INavigation navigation, string recepieId)
        {
            Navigation = navigation;
            isOpenAsEddit = true;
            NavigationBarTitle = "Edit Recepie";
            AddEdditButtonText = "Edit Recepie";
            AddEditImageText = "Change Image";

            OpenImageCommand = new Command(async () => await LoadImage());
            AddToIngredientsCommand = new Command(AddToIngredients);
            AddToStepsCommand = new Command(AddToSteps);
            RemoveStepCommand = new Command(RemoveStepFromList);
            RemoveIngredientCommand = new Command(RemoveIngredientFromList);
            CancelAddingCommand = new Command(CancelAdding);
            AddEditRecepieCommand = new Command(async () => await UpdateRecepie(recepieId));

            GetDetailsAboutDish(recepieId).ContinueWith(task => { 
                DishToAddEdit = task.Result;
                ImgFromGallery = task.Result.ImageUrl;
                Steps = new ObservableCollection<string>(task.Result.Steps.ToList());
                Ingredients = new ObservableCollection<string>(task.Result.Ingredients.ToList());
                SelectedCategoryIndex = ((int)(DishCategory)task.Result.Category);
            });

            DishCategory dishCategories = new DishCategory();
            CategoryOfDishes = new ObservableCollection<string>(GetDisplayNames(dishCategories));
        }

        // Methods
        private async Task LoadImage()
        {
            var pickImage = await FilePicker.PickAsync(new PickOptions()
            {
                FileTypes = FilePickerFileType.Images,
                PickerTitle = "Pick an image"
            });

            if (pickImage != null)
            {
                var stream = await pickImage.OpenReadAsync();
                _imageFilePath = pickImage.FullPath;
                ImgFromGallery = ImageSource.FromStream(() => stream);

                if(isOpenAsEddit)
                    imageWasChanged = true;
            }
        }
        private void AddToSteps()
        {
            if (TextToStepList != null)
            {
                Steps.Add(TextToStepList.ToString());
                TextToStepList = null;
            }
        }
        private void RemoveStepFromList()
        {
            if(SelectedStep != null)
            {
                Steps.Remove(SelectedStep);
            }
        }
        private void AddToIngredients()
        {
            if(TextToIngredientList != null)
            {
                Ingredients.Add(TextToIngredientList.ToString());
                TextToIngredientList = null;
            }
        }
        private void RemoveIngredientFromList()
        {
            if(SelectedIngredient != null)
            {
                Ingredients.Remove(SelectedIngredient);
            }
        }
        private void CancelAdding()
        {
            Navigation.PushAsync(new HomeView());
        }
        private async Task AddRecepie()
        {
            if(DishToAddEdit.Title != null && DishToAddEdit.NumberOfServings != 0 && DishToAddEdit.PreparationTime != 0 && DishToAddEdit.Description != null &&
               Steps.Count != 0 && Ingredients.Count != 0 && SelectedCategoryIndex != -1 && _imageFilePath != null)
            {
                // Add image to Firebase Storage
                Guid id = Guid.NewGuid();
                string extension = Path.GetExtension(_imageFilePath);
                var reference = CrossFirebaseStorage.Current.Instance.RootReference.Child(id.ToString() + extension);
                await reference.PutFileAsync(_imageFilePath);

                var url = await reference.GetDownloadUrlAsync();
                string urlToImage = url.ToString();

                // Add recepie to database
                var newRecepie = await CrossCloudFirestore.Current.Instance.Collection(Dish.CollectionPath).AddAsync(new { title = "new_file" });

                var currentUserId = CrossFirebaseAuth.Current.Instance.CurrentUser.Uid;


                var idNewRecepie = newRecepie.Id;
                var selectedTypeOfDish = ((DishCategory)SelectedCategoryIndex).ToString();

                await CrossCloudFirestore.Current
                                         .Instance
                                         .Collection(Dish.CollectionPath)
                                         .Document(idNewRecepie)
                                         .UpdateAsync(new { id =  idNewRecepie, authorId = currentUserId, imageUrl = urlToImage, title = DishToAddEdit.Title,
                                                            description = DishToAddEdit.Description, category = selectedTypeOfDish, 
                                                            ingredients = Ingredients.ToList(), steps = Steps.ToList(), numberOfServings = DishToAddEdit.NumberOfServings, 
                                                            preparationTime = DishToAddEdit.PreparationTime, ratingCount = 0, ratingSum = 0 });

                var newPage = new AddedRecipesView();
                NavigationPage.SetHasBackButton(newPage, false);
                await Navigation.PushAsync(newPage);
                await App.Current.MainPage.DisplayToastAsync("Your recepie was added!");
            }
            else
            {
               await App.Current.MainPage.DisplayAlert("Warning", "All fields, including a photo, must be completed!", "OK");
            }
        }
        private async Task UpdateRecepie(string idRecepie)
        {
            if (DishToAddEdit.Title != null && DishToAddEdit.NumberOfServings != 0 && DishToAddEdit.PreparationTime != 0 && DishToAddEdit.Description != null &&
               Steps.Count != 0 && Ingredients.Count != 0 && SelectedCategoryIndex != -1)
            {
                if (imageWasChanged)
                {
                    // Update image to Firebase Storage
                    Guid id = Guid.NewGuid();
                    string extension = Path.GetExtension(_imageFilePath);
                    var reference = CrossFirebaseStorage.Current.Instance.RootReference.Child(id.ToString() + extension);
                    await reference.PutFileAsync(_imageFilePath);

                    var url = await reference.GetDownloadUrlAsync();
                    string urlToImage = url.ToString();

                    var selectedTypeOfDish = ((DishCategory)SelectedCategoryIndex).ToString();
                    await CrossCloudFirestore.Current
                                             .Instance
                                             .Collection(Dish.CollectionPath)
                                             .Document(idRecepie)
                                             .UpdateAsync(new
                                             {
                                                 id = DishToAddEdit.Id,
                                                 authorId = DishToAddEdit.AuthorId,
                                                 imageUrl = urlToImage,
                                                 title = DishToAddEdit.Title,
                                                 description = DishToAddEdit.Description,
                                                 category = selectedTypeOfDish,
                                                 ingredients = Ingredients.ToList(),
                                                 steps = Steps.ToList(),
                                                 numberOfServings = DishToAddEdit.NumberOfServings,
                                                 preparationTime = DishToAddEdit.PreparationTime,
                                                 ratingCount = DishToAddEdit.RatingCount,
                                                 ratingSum = DishToAddEdit.RatingSum
                                             });
                }
                else
                {
                    // Update recepie to database
                    var selectedTypeOfDish = ((DishCategory)SelectedCategoryIndex).ToString();
                    await CrossCloudFirestore.Current
                                             .Instance
                                             .Collection(Dish.CollectionPath)
                                             .Document(idRecepie)
                                             .UpdateAsync(new
                                             {
                                                 id = DishToAddEdit.Id,
                                                 authorId = DishToAddEdit.AuthorId,
                                                 imageUrl = DishToAddEdit.ImageUrl,
                                                 title = DishToAddEdit.Title,
                                                 description = DishToAddEdit.Description,
                                                 category = selectedTypeOfDish,
                                                 ingredients = Ingredients.ToList(),
                                                 steps = Steps.ToList(),
                                                 numberOfServings = DishToAddEdit.NumberOfServings,
                                                 preparationTime = DishToAddEdit.PreparationTime,
                                                 ratingCount = DishToAddEdit.RatingCount,
                                                 ratingSum = DishToAddEdit.RatingSum
                                             });
                }

                var newPage = new AddedRecipesView();
                NavigationPage.SetHasBackButton(newPage, false);
                await Navigation.PushAsync(newPage);
                await App.Current.MainPage.DisplayToastAsync("Your recepie was changed!");
            }
            else
            {
                await App.Current.MainPage.DisplayAlert("Warning", "All fields, including a photo, must be completed!", "OK");
            }
        }
        private async Task<Dish> GetDetailsAboutDish(string id)
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
    }
}
