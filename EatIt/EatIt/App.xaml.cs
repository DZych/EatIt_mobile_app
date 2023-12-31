using EatIt.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

[assembly: ExportFont("PoppinsRegular.tff", Alias = "Poppins")]
[assembly: ExportFont("PoppinsBold.tff", Alias = "PoppinsBold")]
[assembly: ExportFont("GelionRegular.ttf", Alias = "Gelion")]
[assembly: ExportFont("GelionMedium.ttf", Alias = "GelionMedium")]
[assembly: ExportFont("GelionBold.ttf", Alias = "GelionBold")]

namespace EatIt
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new StartView());
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
