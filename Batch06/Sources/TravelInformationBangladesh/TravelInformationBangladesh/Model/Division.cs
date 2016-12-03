using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TravelInformationBangladesh.Model
{
    public class Division
    {
        public int DivisionId { get; set; }
        public string DivisionName { get; set; }

        public Division(string divisionName)
        {
            this.DivisionName = divisionName;
        }
        public Division()
        {

        }
    }
}