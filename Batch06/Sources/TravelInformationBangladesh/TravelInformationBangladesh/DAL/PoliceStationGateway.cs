using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.Model;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace TravelInformationBangladesh.DAL
{
    public class PoliceStationGateway
    {
        //Configure connection string
        string connectionString = WebConfigurationManager.ConnectionStrings["TravelInformationBangladeshDBConnectionString"].ConnectionString;

        //Create a method for Saving PoliceStation
        public int SavePoliceStation(PoliceStation policeStation)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "INSERT INTO PoliceStation VALUES('" + policeStation.PoliceStationName + "','" + policeStation.PoliceStationInformation + "'," + policeStation.TouristSpotId + ")";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            int rowAffected = cmd.ExecuteNonQuery();
            con.Close();

            return rowAffected;
        }

        //Create a method for retrieving data
        public List<PoliceStation> GetAllPoliceStation()
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM PoliceStation";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            List<PoliceStation> policeStations = new List<PoliceStation>();
            while (reader.Read())
            {
                PoliceStation policeStation = new PoliceStation();
                policeStation.PoliceStationId = (int)reader["PoliceStationId"];
                policeStation.PoliceStationName = reader["PoliceStationName"].ToString();
                policeStation.PoliceStationInformation = reader["PoliceStationInformation"].ToString();

                policeStations.Add(policeStation);
            }
            reader.Close();
            con.Close();
            return policeStations;
        }

        //Create a method for checking PoliceStation Name exist or not
        public PoliceStation IsExist(PoliceStation policeStation)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM PoliceStation WHERE PoliceStationName='" + policeStation.PoliceStationName + "'";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            PoliceStation aPoliceStation = null;
            if (reader.HasRows)
            {
                reader.Read();
                aPoliceStation = new PoliceStation();
                aPoliceStation.PoliceStationId = (int)reader["PoliceStationId"];
                aPoliceStation.PoliceStationName = reader["PoliceStationName"].ToString();
                aPoliceStation.PoliceStationInformation = reader["PoliceStationInformation"].ToString();
            }
            reader.Close();
            con.Close();
            return aPoliceStation;
        }

        //Create a method for update PoliceStation information
        public bool UpdatePoliceStation(PoliceStation policeStation)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "UPDATE PoliceStation SET PoliceStationName='" + policeStation.PoliceStationName + "','" + policeStation.PoliceStationInformation + "' WHERE PoliceStationId='" + policeStation.PoliceStationId + "'";
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

        //Create a method for delete PoliceStation information
        public bool DeletePoliceStation(int policeStationId)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connectionString;

            string query = "DELETE PoliceStation WHERE PoliceStationId=" + policeStationId;

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