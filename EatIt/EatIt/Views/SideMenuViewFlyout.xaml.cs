using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using EatIt.Views;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using EatIt.Models;
using System.Diagnostics;
using System.Windows.Input;
using Plugin.FirebaseAuth;

namespace EatIt
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SideMenuViewFlyout : ContentPage
    {
        public ListView ListView;

        public SideMenuViewFlyout()
        {
            InitializeComponent();
            BindingContext = new SideMenuViewFlyoutViewModel(this.Navigation);
            ListView = MenuItemsListView;
        }

        private class SideMenuViewFlyoutViewModel : INotifyPropertyChanged
        {
            public ObservableCollection<SideMenuItem> MenuItems { get; set; }

            private string _colorOfLogOut;
            public string ColorOfLogOut
            {
                get { return _colorOfLogOut; }
                set
                {
                    _colorOfLogOut = value;
                    OnPropertyChanged(nameof(ColorOfLogOut));
                }
            }

            public ICommand LogOutCommand { get; set; }
            public INavigation Navigation { get; internal set; }
            public SideMenuViewFlyoutViewModel(INavigation navigation)
            {
                Navigation = navigation;

                ColorOfLogOut = "#fafafa";

                MenuItems = new ObservableCollection<SideMenuItem>(new[]
                {
                    new SideMenuItem { Id = 0, Title = "Home", TargetType = typeof(HomeView)},
                    new SideMenuItem { Id = 1, Title = "Favourites recipies", TargetType = typeof(FavouritesRecipesView) },
                    new SideMenuItem { Id = 2, Title = "Added recipies", TargetType = typeof(AddedRecipesView) },
                    new SideMenuItem { Id = 3, Title = "Find new recipe", TargetType = typeof(FindNewRecipeView) },
                    new SideMenuItem { Id = 4, Title = "Add new recipe", TargetType = typeof(AddEditRecipeView) },
                });

                LogOutCommand = new Command(async () => await LogOutAsync());
            }

            #region INotifyPropertyChanged Implementation
            public event PropertyChangedEventHandler PropertyChanged;
            void OnPropertyChanged([CallerMemberName] string propertyName = "")
            {
                if (PropertyChanged == null)
                    return;

                PropertyChanged.Invoke(this, new PropertyChangedEventArgs(propertyName));
            }
            #endregion

            private async Task LogOutAsync()
            {
                ColorOfLogOut = "#dcdcdc";
                var result = await App.Current.MainPage.DisplayAlert("Logout", "Are you sure you want to logout from EatIt?", "Yes", "No");
                if (result)
                {
                    App.Current.MainPage = new NavigationPage(new StartView());
                    ColorOfLogOut = "#fafafa";
                }
                else
                {
                    Debug.WriteLine("Zostanie");
                    ColorOfLogOut = "#fafafa";
                }
            }

        }
    }
}