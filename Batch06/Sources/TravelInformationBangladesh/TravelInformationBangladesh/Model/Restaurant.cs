using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TravelInformationBangladesh.Model
{
    public class Restaurant
    {
        public int RestaurantId { get; set; }
        public string RestaurantName { get; set; }
        public string RestaurantInformation { get; set; }
        public int TouristSpotId { get; set; }

        public Restaurant(string restaurantName, string restaurantInformation, int touristSpotId)
        {
            this.RestaurantName = restaurantName;
            this.RestaurantInformation = restaurantInformation;
            this.TouristSpotId = touristSpotId;
        }
        public Restaurant()
        {
 
        }
    }
}