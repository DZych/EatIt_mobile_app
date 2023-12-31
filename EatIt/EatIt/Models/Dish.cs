using System;
using System.Collections.Generic;
using Plugin.CloudFirestore.Attributes;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Plugin.CloudFirestore.Converters;
using Xamarin.Forms.Xaml;
using Xamarin.Forms;
using System.ComponentModel;

namespace EatIt.Models
{
    public class Dish
    {
        public static string CollectionPath = "dishes";

        [MapTo("id")]
        public string Id { get; set; }
        [MapTo("title")]
        public string Title { get; set; }
        [MapTo("category")]
        [DocumentConverter(typeof(EnumStringConverter))]
        public DishCategory Category { get; set; }
        [MapTo("description")]
        public string Description { get; set; }
        [MapTo("imageUrl")]
        public string ImageUrl { get; set; }
        [MapTo("ingredients")]
        public List<string> Ingredients { get; set; }
        [MapTo("steps")]
        public List<string> Steps { get; set; }
        public List<int> NumberOfSteps { get; set; }
        [MapTo("preparationTime")]
        public int PreparationTime { get; set; }
        [MapTo("numberOfServings")]
        public int NumberOfServings { get; set; }
        [MapTo("ratingCount")]
        public int RatingCount { get; set; }
        [MapTo("ratingSum")]
        public double RatingSum { get; set; }
        [MapTo("userId")]
        public string UserId { get; set; }
        [MapTo("authorId")]
        public string AuthorId { get; set; }

    }

    public enum DishCategory
    {
        [Display(Name = "Breakfast")]
        breakfast,
        [Display(Name = "Main Dish")]
        mainDish,
        [Display(Name = "Side Dish")]
        sideDish,
        [Display(Name = "Salad")]
        salad,
        [Display(Name = "Dessert")]
        dessert,
        [Display(Name = "Drink")]
        drink
    }
}
