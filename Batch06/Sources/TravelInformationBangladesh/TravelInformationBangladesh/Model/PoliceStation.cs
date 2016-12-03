using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TravelInformationBangladesh.Model
{
    public class PoliceStation
    {
        public int PoliceStationId { get; set; }
        public string PoliceStationName { get; set; }
        public string PoliceStationInformation { get; set; }
        public int TouristSpotId { get; set; }

        public PoliceStation(string policeStationName, string policeStationInformation, int touristSpotId)
        {
            this.PoliceStationName = policeStationName;
            this.PoliceStationInformation = policeStationInformation;
            this.TouristSpotId = touristSpotId;
        }
        public PoliceStation()
        {
 
        }
    }
}