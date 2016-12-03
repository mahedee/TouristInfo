using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TravelInformationBangladesh.Model
{
    public class FromUpazila
    {
        public int FromUpazilaId { get; set; }
        public string FromUpazilaName { get; set; }
        public int DistrictId { get; set; }

        public FromUpazila(string fromUpazilaName, int districtId)
        {
            this.FromUpazilaName = fromUpazilaName;
            this.DistrictId = districtId;
        }
        public FromUpazila()
        {
 
        }
    }
}