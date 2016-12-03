using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.DAL;
using TravelInformationBangladesh.Model;

namespace TravelInformationBangladesh.BLL
{
    public class RestaurantManager
    {
        RestaurantGateway restaurantGateway = new RestaurantGateway();

        //Create a Method for Save Restaurant
        public string SaveRestaurant(Restaurant restaurant)
        {
            Restaurant aRestaurant = restaurantGateway.IsExist(restaurant);

            if (aRestaurant == null)
            {
                int rowAffected = restaurantGateway.SaveRestaurant(restaurant);
                if (rowAffected > 0)
                {
                    return "Save Successfully";
                }
                else
                {
                    return "Saving failed";
                }
            }
            else
            {
                return "Restaurant Name is Exist";
            }

        }
    }
}