using EatIt.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace EatIt.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class FindNewRecipeView : ContentPage
    {
        public FindNewRecipeView()
        {
            InitializeComponent();
            BindingContext = new FindNewRecipeViewModel(this.Navigation);
        }
    }
}