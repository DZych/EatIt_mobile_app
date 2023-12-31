using Plugin.CloudFirestore.Attributes;
using System;
using System.Collections.Generic;
using System.Text;

namespace EatIt.Models
{
    public class Favorites
    {
        public static string CollectionPath = "favorites";

        [MapTo("id")]
        public string Id { get; set; }
        [MapTo("dishId")]
        public string DishId { get; set; }
        [MapTo("userId")]
        public string UserId { get; set; }
    }
}
