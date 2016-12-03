using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.Model;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace TravelInformationBangladesh.DAL
{
    public class DistrictGateway
    {
        //Configure connection string
        string connectionString = WebConfigurationManager.ConnectionStrings["TravelInformationBangladeshDBConnectionString"].ConnectionString;
        
        //Create a method for Save District
        public int SaveDistrict(District district)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "INSERT INTO District VALUES('" + district.DistrictName + "'," + district.DivisionId + ")";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            int rowAffected = cmd.ExecuteNonQuery();
            con.Close();

            return rowAffected;
        }

        //Create a method for GetDistrictByID
        public District GetDistrictById(int id)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM Division WHERE DistrictId=" + id;
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            District district = null;
            while (reader.Read())
            {
                district = new District();
                district.DistrictId = (int)reader["DistrictId"];
                district.DistrictName = reader["DistrictName"].ToString();
            }
            reader.Close();
            con.Close();
            return district;
        }

        //Create a method for retrieving data
        public List<District> GetAllDistricts()
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM District";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            List<District> divisions = new List<District>();
            while (reader.Read())
            {
                District district = new District();
                district.DistrictId = (int)reader["DistrictId"];
                district.DistrictName = reader["DistrictName"].ToString();

                divisions.Add(district);
            }
            reader.Close();
            con.Close();
            return divisions;
        }

        //Create a method for checking District Name exist or not
        public District IsExist(District district)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM District WHERE DistrictName='" + district.DistrictName + "'";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            District aDistrict = null;
            if (reader.HasRows)
            {
                reader.Read();
                aDistrict = new District();
                aDistrict.DistrictId = (int)reader["DistrictId"];
                aDistrict.DistrictName = reader["DistrictName"].ToString();
            }
            reader.Close();
            con.Close();
            return aDistrict;
        }
    }
}