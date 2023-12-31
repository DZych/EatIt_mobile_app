using EatIt.ViewModels;
using EatIt.Views;
using Plugin.CloudFirestore;
using Plugin.FirebaseAuth;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace EatIt.ModelViews
{
    public class SignUpViewModel : ViewModelBase
    {
        // Fields
        private string username;
        public string Username
        {
            get { return username; }
            set
            {
                username = value;
                OnPropertyChanged(nameof(Username));
            }
        }

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

        private string repeatedPassword;
        public string RepeatedPassword
        {
            get { return repeatedPassword; }
            set
            {
                repeatedPassword = value;
                OnPropertyChanged(nameof(RepeatedPassword));
            }
        }

        // Commands
        public ICommand SignUpCommand { get; }
        public ICommand MoveToSignInCommand { get; }

        // Constructor
        public SignUpViewModel()
        {
            SignUpCommand = new Command(async() =>
            {
                await SignUp();
            });

            MoveToSignInCommand = new Command(async () =>
            {
                await App.Current.MainPage.Navigation.PushAsync(new SignInView());
            });

        }

        // Methods
        private async Task SignUp()
        {
            if (Email == null || Username == null || Password == null || RepeatedPassword == null)
            {
                await App.Current.MainPage.DisplayAlert("Alert", "You must complete all fields", "OK");
                return;
            }

            if (Password != RepeatedPassword)
            {
                await App.Current.MainPage.DisplayAlert("Alert", "Passwords must be the same", "OK");
                return;
            }
            if (IsValidEmail(Email) == false)
            {
                await App.Current.MainPage.DisplayAlert("Alert", "Please enter a valid email", "OK");
                return;
            }

            try
            {
                // create account for user
                var result = await CrossFirebaseAuth.Current.Instance.CreateUserWithEmailAndPasswordAsync(Email, Password);
                if (result.User.Uid != null)
                {
                    // enter user to database
                    await CrossCloudFirestore.Current
                         .Instance
                         .Collection("users")
                         .Document(result.User.Uid)
                         .SetAsync(new { id = result.User.Uid, username = Username, email = Email });

                    // move to login page
                    await App.Current.MainPage.DisplayAlert("Alert", "Account created, you can now login", "OK");
                    await App.Current.MainPage.Navigation.PushAsync(new SignInView());
                }
            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Alert", ex.Message, "OK");
            }
        }
        private bool IsValidEmail(string email)
        {
            try
            {
                MailAddress mail = new MailAddress(email);
                return true;
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
                return false;
            }
        }
    }
}
