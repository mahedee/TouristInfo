using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TravelInformationBangladesh.Model
{
    public class District
    {
        public int DistrictId { get; set; }
        public string DistrictName { get; set; }
        public int DivisionId { get; set; }

        public District(string districtName,int divisionId)
        {
            this.DistrictName = districtName;
            this.DivisionId = divisionId;
        }
        public District()
        {
 
        }
    }
}