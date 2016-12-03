using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.DAL;
using TravelInformationBangladesh.Model;

namespace TravelInformationBangladesh.BLL
{
    public class HospitalManager
    {
        HospitalGateway hospitalGateway = new HospitalGateway();

        //Create a Method for Save Hospital
        public string SaveHospital(Hospital hospital)
        {
            Hospital aHospital = hospitalGateway.IsExist(hospital);

            if (aHospital == null)
            {
                int rowAffected = hospitalGateway.SaveHospital(hospital);
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
                return "Hospital Name is Exist";
            }

        }
    }
}