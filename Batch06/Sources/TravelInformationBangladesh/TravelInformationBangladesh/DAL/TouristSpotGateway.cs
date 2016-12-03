using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.Model;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace TravelInformationBangladesh.DAL
{
    public class TouristSpotGateway
    {
        //Configure connection string
        string connectionString = WebConfigurationManager.ConnectionStrings["TravelInformationBangladeshDBConnectionString"].ConnectionString;

        //Create a method for Saving Tourist Spot
        public int SaveTouristSpot(TouristSpot touristSpot)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "INSERT INTO TouristSpot VALUES('" + touristSpot.TouristSpotName + "','" + touristSpot.TouristSpotInformation + "','" + touristSpot.Communication + "')";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            int rowAffected = cmd.ExecuteNonQuery();
            con.Close();

            return rowAffected;
        }

        //Create a method for retrieving data
        public List<TouristSpot> GetAllTouristSpot()
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM TouristSpot";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            List<TouristSpot> touristSpots = new List<TouristSpot>();
            while (reader.Read())
            {
                TouristSpot touristSpot = new TouristSpot();
                touristSpot.TouristSpotId = (int)reader["TouristSpotId"];
                touristSpot.TouristSpotName = reader["TouristSpotName"].ToString();
                touristSpot.Communication = reader["Communication"].ToString();

                touristSpots.Add(touristSpot);
            }
            reader.Close();
            con.Close();
            return touristSpots;
        }

        //Create a mmethod for checking TouristSpot Name exist or not
        public TouristSpot IsExist(TouristSpot touristSpot)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM TouristSpot WHERE TouristSpotName='" + touristSpot.TouristSpotName + "'";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            TouristSpot aTouristSpot = null;
            if (reader.HasRows)
            {
                reader.Read();
                aTouristSpot = new TouristSpot();
                aTouristSpot.TouristSpotId = (int)reader["TouristSpotId"];
                aTouristSpot.TouristSpotName = reader["TouristSpotName"].ToString();
                aTouristSpot.TouristSpotInformation = reader["TouristSpotInformation"].ToString();
            }
            reader.Close();
            con.Close();
            return aTouristSpot;
        }

        //Create a method for update tourist spot information
        public bool UpdateTouristSpot(TouristSpot touristSpot)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "UPDATE TouristSpot SET TouristSpotName='" + touristSpot.TouristSpotName + "','" + touristSpot.TouristSpotInformation + "' WHERE TouristSpotId='" + touristSpot.TouristSpotId + "'";
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

        //Create a method for delete tourist spot information
        public bool DeleteTouristSpot(int touristSpotId)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connectionString;

            string query = "DELETE TouristSpot WHERE TouristSpotId=" + touristSpotId;

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

        //Create a method for GetTouristSpotById
        public TouristSpot GetTouristSpotById(int id)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM TouristSpot WHERE TouristSpotId=" + id;
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            TouristSpot touristSpot = null;
            while (reader.Read())
            {
                touristSpot = new TouristSpot();
                touristSpot.TouristSpotId = (int)reader["TouristSpotId"];
                touristSpot.TouristSpotName = reader["TouristSpotName"].ToString();
                touristSpot.TouristSpotInformation = reader["TouristSpotInformation"].ToString();
            }
            reader.Close();
            con.Close();
            return touristSpot;
        }
    }
}