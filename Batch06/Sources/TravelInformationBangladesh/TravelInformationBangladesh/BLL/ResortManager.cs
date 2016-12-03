using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.DAL;
using TravelInformationBangladesh.Model;

namespace TravelInformationBangladesh.BLL
{
    public class ResortManager
    {
        ResortGateway resortGateway = new ResortGateway();

        //Create a Method for Save Resort
        public string SaveResort(Resort resort)
        {
            Resort aResort = resortGateway.IsExist(resort);

            if (aResort == null)
            {
                int rowAffected = resortGateway.SaveResort(resort);
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
                return "Resort Name is Exist";
            }

        }
    }
}