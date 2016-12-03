using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.Model;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace TravelInformationBangladesh.DAL
{
    public class ResortGateway
    {
        //Configure connection string
        string connectionString = WebConfigurationManager.ConnectionStrings["TravelInformationBangladeshDBConnectionString"].ConnectionString;

        //Create a method for Saving Resort
        public int SaveResort(Resort resort)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "INSERT INTO Resort VALUES('" + resort.ResortName + "','" + resort.ResortInformation + "'," + resort.TouristSpotId + ")";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            int rowAffected = cmd.ExecuteNonQuery();
            con.Close();

            return rowAffected;
        }

        //Create a method for retrieving data
        public List<Resort> GetAllResort()
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM Resort";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            List<Resort> resorts = new List<Resort>();
            while (reader.Read())
            {
                Resort resort = new Resort();
                resort.ResortId = (int)reader["ResortId"];
                resort.ResortName = reader["ResortName"].ToString();
                resort.ResortInformation = reader["ResortInformation"].ToString();

                resorts.Add(resort);
            }
            reader.Close();
            con.Close();
            return resorts;
        }

        //Create a method for checking Resort Name exist or not
        public Resort IsExist(Resort resort)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM Resort WHERE ResortName='" + resort.ResortName + "'";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            Resort aResort = null;
            if (reader.HasRows)
            {
                reader.Read();
                aResort = new Resort();
                aResort.ResortId = (int)reader["ResortId"];
                aResort.ResortName = reader["ResortName"].ToString();
                aResort.ResortInformation = reader["ResortInformation"].ToString();
            }
            reader.Close();
            con.Close();
            return aResort;
        }

        //Create a method for update Resort information
        public bool UpdateResort(Resort resort)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "UPDATE Resort SET ResortName='" + resort.ResortName + "','" + resort.ResortInformation + "' WHERE ResortId='" + resort.ResortId + "'";
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

        //Create a method for delete Resort information
        public bool DeleteResort(int resortId)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connectionString;

            string query = "DELETE Resort WHERE ResortId=" + resortId;

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