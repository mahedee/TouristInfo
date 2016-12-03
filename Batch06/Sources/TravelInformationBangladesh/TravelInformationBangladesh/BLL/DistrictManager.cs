using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.DAL;
using TravelInformationBangladesh.Model;

namespace TravelInformationBangladesh.BLL
{
    public class DistrictManager
    {
        DistrictGateway districtGateway = new DistrictGateway();

        //Create a Method for SaveDistrict
        public string SaveDistrict(District district)
        {
            District aDistrict = districtGateway.IsExist(district);

            if (aDistrict==null)
            {
                int rowAffected = districtGateway.SaveDistrict(district);
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
                return "District Name is Exist";
            }
            
        }

        //Create a method for DistrictById
        public District GetDistrictById(int id)
        {
            return districtGateway.GetDistrictById(id);
        }

        //Create a method for retrieve data
        public List<District> GetAllDistricts()
        {
            return districtGateway.GetAllDistricts();
        }
    }
}