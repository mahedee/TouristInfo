using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.DAL;
using TravelInformationBangladesh.Model;

namespace TravelInformationBangladesh.BLL
{
    public class FromUpazilaManager
    {
        FromUpazilaGateway fromUpazilaGateway = new FromUpazilaGateway();

        //Create a Method for SaveFromUpazila
        public string SaveFromUpazila(FromUpazila fromUpazila)
        {
            FromUpazila aFromUpazila = fromUpazilaGateway.IsExist(fromUpazila);

            if (aFromUpazila==null)
            {
                int rowAffected = fromUpazilaGateway.SaveFromUpazila(fromUpazila);
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
                return "From Upazila Name is Exist";
            }
        }
    }
}