using Plugin.FirebaseAuth;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace EatIt.ViewModels
{
    public class ForgotPasswordViewModel: ViewModelBase
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

        // Commands
        public ICommand ResetPasswordCommand { get; }


        // Constructor
        public ForgotPasswordViewModel()
        {
            ResetPasswordCommand = new Command(async () => await ResetPassword());
        }

        //Methods
        private async Task ResetPassword()
        {
            if (IsValidEmail(Email) == false)
            {
                await App.Current.MainPage.DisplayAlert("Alert", "Please enter a valid email", "OK");
                return;
            }

            // Send email with recovery password option
            await CrossFirebaseAuth.Current.Instance.SendPasswordResetEmailAsync(Email);
            await App.Current.MainPage.DisplayAlert("Alert", "Password restart email has been sent", "OK");
            await App.Current.MainPage.Navigation.PushAsync(new StartView());
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
