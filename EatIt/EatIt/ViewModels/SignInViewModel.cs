using EatIt.ModelViews;
using EatIt.Views;
using Plugin.FirebaseAuth;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Mail;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace EatIt.ViewModels
{
    public class SignInViewModel : ViewModelBase
    {
        // Fields
        private string email;
        public string Email
        {
            get { return email; }
            set
            {
                email = value;
                OnPropertyChanged(nameof(Email));
            }
        }
        private string password;
        public string Password
        {
            get { return password; }
            set
            {
                password = value;
                OnPropertyChanged(nameof(Password));
            }
        }

        // Commands
        public ICommand SignInCommand { get; }
        public ICommand MoveToSignUpCommand { get; }
        public ICommand MoveToForgotPasswordCommand { get; }

        // Constructor
        public SignInViewModel()
        {
            SignInCommand = new Command(async () =>
            {
                try
                {
                    var result = await CrossFirebaseAuth.Current.Instance.SignInWithEmailAndPasswordAsync(Email, Password);

                    if (result.User != null)
                    {
                        App.Current.MainPage = new SideMenuView();
                    }

                }
                catch (Exception ex)
                {
                    await App.Current.MainPage.DisplayAlert("Alert", ex.Message, "OK");
                }
            });

            MoveToSignUpCommand = new Command(async () =>
            {
                await App.Current.MainPage.Navigation.PushAsync(new SignUpView());
            });

            MoveToForgotPasswordCommand = new Command(async () =>
            {
                await App.Current.MainPage.Navigation.PushAsync(new ForgotPasswordView());
            });
        }
    }
}
