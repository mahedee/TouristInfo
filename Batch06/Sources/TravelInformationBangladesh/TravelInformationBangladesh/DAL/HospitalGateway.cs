using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.Model;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace TravelInformationBangladesh.DAL
{
    public class HospitalGateway
    {
        //Configure connection string
        string connectionString = WebConfigurationManager.ConnectionStrings["TravelInformationBangladeshDBConnectionString"].ConnectionString;

        //Create a method for Saving Hospital
        public int SaveHospital(Hospital hospital)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "INSERT INTO Hospital VALUES('" + hospital.HospitalName + "','" + hospital.HospitalInformation + "'," + hospital.TouristSpotId + ")";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            int rowAffected = cmd.ExecuteNonQuery();
            con.Close();

            return rowAffected;
        }

        //Create a method for retrieving data
        public List<Hospital> GetAllHospital()
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM Hospital";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            List<Hospital> hospitals = new List<Hospital>();
            while (reader.Read())
            {
                Hospital hospital = new Hospital();
                hospital.HospitalId = (int)reader["HospitalId"];
                hospital.HospitalName = reader["HospitalName"].ToString();
                hospital.HospitalInformation = reader["HospitalInformation"].ToString();

                hospitals.Add(hospital);
            }
            reader.Close();
            con.Close();
            return hospitals;
        }

        //Create a method for checking Hospital Name exist or not
        public Hospital IsExist(Hospital hospital)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM Hospital WHERE HospitalName='" + hospital.HospitalName + "'";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            Hospital aHospital = null;
            if (reader.HasRows)
            {
                reader.Read();
                aHospital = new Hospital();
                aHospital.HospitalId = (int)reader["HospitalId"];
                aHospital.HospitalName = reader["HospitalName"].ToString();
                aHospital.HospitalInformation = reader["HospitalInformation"].ToString();
            }
            reader.Close();
            con.Close();
            return aHospital;
        }

        //Create a method for update Hospital information
        public bool UpdateHospital(Hospital hospital)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "UPDATE Hospital SET HospitalName='" + hospital.HospitalName + "','" + hospital.HospitalInformation + "' WHERE HospitalId='" + hospital.HospitalId + "'";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();

            int rowAffected = cmd.ExecuteNonQuery();

            con.Close();

            if (rowAffected > 0)
            {
                return true;
            }
            return false;
        }

        //Create a method for delete Hospital information
        public bool DeleteHospital(int hospitalId)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connectionString;

            string query = "DELETE Hospital WHERE HospitalId=" + hospitalId;

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;

            con.Open();
            int rowAffected = cmd.ExecuteNonQuery();
            con.Close();

            if (rowAffected > 0)
            {
                return true;
            }
            return false;
        }
    }
}