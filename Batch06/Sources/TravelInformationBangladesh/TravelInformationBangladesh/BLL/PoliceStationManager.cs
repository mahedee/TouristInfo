using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.DAL;
using TravelInformationBangladesh.Model;

namespace TravelInformationBangladesh.BLL
{
    public class PoliceStationManager
    {
        PoliceStationGateway policeStationGateway = new PoliceStationGateway();

        //Create a Method for Save PoliceStation
        public string SavePoliceStation(PoliceStation policeStation)
        {
            PoliceStation aPoliceStation = policeStationGateway.IsExist(policeStation);

            if (aPoliceStation == null)
            {
                int rowAffected = policeStationGateway.SavePoliceStation(policeStation);
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
                return "Police Station Name is Exist";
            }

        }
    }
}