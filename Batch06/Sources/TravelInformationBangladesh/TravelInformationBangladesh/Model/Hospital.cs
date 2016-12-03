using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TravelInformationBangladesh.Model
{
    public class Hospital
    {
        public int HospitalId { get; set; }
        public string HospitalName { get; set; }
        public string HospitalInformation { get; set; }
        public int TouristSpotId { get; set; }

        public Hospital(string hospitalName, string hospitalInformation, int touristSpotId)
        {
            this.HospitalName = hospitalName;
            this.HospitalInformation = hospitalInformation;
            this.TouristSpotId = touristSpotId;
        }
        public Hospital()
        {
 
        }
    }
}