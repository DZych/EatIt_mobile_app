using EatIt.Views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;


namespace EatIt
{
    public partial class StartView : ContentPage
    {
        public StartView()
        {
            InitializeComponent();
        }

        private void SignUpClicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new SignUpView());
        }

        private void SignInClicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new SignInView());
        }
    }
}
