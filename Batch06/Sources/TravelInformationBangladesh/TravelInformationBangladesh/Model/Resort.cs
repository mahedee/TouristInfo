using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TravelInformationBangladesh.Model
{
    public class Resort
    {
        public int ResortId { get; set; }
        public string ResortName { get; set; }
        public string ResortInformation { get; set; }
        public int TouristSpotId { get; set; }

        public Resort(string resortName, string resortInformation, int touristSpotId)
        {
            this.ResortName = resortName;
            this.ResortInformation = resortInformation;
            this.TouristSpotId = touristSpotId;
        }
        public Resort()
        {

        }
    }
}