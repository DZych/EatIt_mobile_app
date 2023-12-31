using EatIt.Models;
using EatIt.ViewModels;
using Plugin.CloudFirestore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace EatIt.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class DetailsRecipeView : ContentPage
    {
        public DetailsRecipeView(string id)
        {
            InitializeComponent();
            BindingContext = new DetailsRecipeViewModel(id);
        }
    }
}