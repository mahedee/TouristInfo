using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TravelInformationBangladesh.Model
{
    public class TouristSpot
    {
        public int TouristSpotId { get; set; }
        public string TouristSpotName { get; set; }
        public string TouristSpotInformation { get; set; }
        public string Communication { get; set; }

        public TouristSpot(string touristSpotName, string touristSpotInformation, string communication)
        {
            this.TouristSpotName = touristSpotName;
            this.TouristSpotInformation = touristSpotInformation;
            this.Communication = communication;
        }
        public TouristSpot()
        {
 
        }
    }
}