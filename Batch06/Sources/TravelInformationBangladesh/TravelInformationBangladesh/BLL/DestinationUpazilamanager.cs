using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.DAL;
using TravelInformationBangladesh.Model;

namespace TravelInformationBangladesh.BLL
{
    public class DestinationUpazilamanager
    {
        DestinationUpazilaGateway destinationUpazilaGateway = new DestinationUpazilaGateway();

        //Create a Method for SaveFromUpazila
        public string SaveDestinationUpazila(DestinationUpazila destinationUpazila)
        {
            DestinationUpazila aDestinationUpazila = destinationUpazilaGateway.IsExist(destinationUpazila);

            if (aDestinationUpazila==null)
            {
                int rowAffected = destinationUpazilaGateway.SaveDestinationUpazila(destinationUpazila);
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
                return "Destination Upazila Name Exist";
            }
        }
    }
}