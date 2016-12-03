using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.DAL;
using TravelInformationBangladesh.Model;

namespace TravelInformationBangladesh.BLL
{
    public class DivisionManager
    {
        DivisionGateway divisionGateway = new DivisionGateway();
        
        //Create a method for save division
        public string SaveDivision(Division division)
        {
            Division aDivision = divisionGateway.IsExist(division);

            if (aDivision == null)
            {
                int rowAffected = divisionGateway.SaveDivision(division);
                if (rowAffected > 0)
                {
                    return "Save Successfully";
                }
                else
                {
                    return "Saving failled";
                }
            }
            else
            {
                return "Division Name is Exist";
            }

            
        }

        //Create a method for divisionById
        public Division GetDivisionById(int id)
        {
            return divisionGateway.GetDivisionById(id);
        }

        //Create a method for retrieve data
        public List<Division> GetAllDivisions()
        {
            return divisionGateway.GetAllDivisions();
        }
    }
}