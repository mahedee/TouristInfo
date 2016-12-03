using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.DAL;
using TravelInformationBangladesh.Model;

namespace TravelInformationBangladesh.BLL
{
    public class TouristSpotManager
    {
        TouristSpotGateway touristSpotGateway = new TouristSpotGateway();

        //Create a method for save division
        public string SaveTouristSpot(TouristSpot touristSpot)
        {
            TouristSpot aTouristSpot = touristSpotGateway.IsExist(touristSpot);

            if (aTouristSpot == null)
            {
                int rowAffected = touristSpotGateway.SaveTouristSpot(touristSpot);
                if (rowAffected > 0)
                {
                    return "Save Successfully";
                }
                else
                {
                    return "Saving failled";
                }
            }
            else
            {
                return "Tourist Spot Name is Exist";
            }


        }

        //Create a method for TouristSpotById
        public TouristSpot TouristSpotById(int id)
        {
            return touristSpotGateway.GetTouristSpotById(id);
        }

        //Create a method for retrieve data
        public List<TouristSpot> GetAllTouristSpot()
        {
            return touristSpotGateway.GetAllTouristSpot();
        }
    }
}