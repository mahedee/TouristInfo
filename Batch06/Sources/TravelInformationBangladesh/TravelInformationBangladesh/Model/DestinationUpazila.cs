using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TravelInformationBangladesh.Model
{
    public class DestinationUpazila
    {
        public int DestinationUpazilaId { get; set; }
        public string DestinationUpazilaName { get; set; }
        public int DistrictId { get; set; }

        public DestinationUpazila(string destinationUpazilaName, int districtId)
        {
            this.DestinationUpazilaName = destinationUpazilaName;
            this.DistrictId = districtId;
        }
        public DestinationUpazila()
        {
 
        }
    }
}