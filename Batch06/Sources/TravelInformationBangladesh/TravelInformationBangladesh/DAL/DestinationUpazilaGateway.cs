using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.Model;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace TravelInformationBangladesh.DAL
{
    public class DestinationUpazilaGateway
    {
        //Configure connection string
        string connectionString = WebConfigurationManager.ConnectionStrings["TravelInformationBangladeshDBConnectionString"].ConnectionString;

        //Create a method for Save DestinationUpazila
        public int SaveDestinationUpazila(DestinationUpazila destinationUpazila)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "INSERT INTO DestinationUpazila VALUES('" + destinationUpazila.DestinationUpazilaName + "'," + destinationUpazila.DistrictId + ")";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            int rowAffected = cmd.ExecuteNonQuery();
            con.Close();

            return rowAffected;
        }

        //Create a method for checking DestinationUpazila Name exist or not
        public DestinationUpazila IsExist(DestinationUpazila destinationUpazila)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM DestinationUpazila WHERE DestinationUpazilaName='" + destinationUpazila.DestinationUpazilaName + "'";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            DestinationUpazila aDestinationUpazila = null;
            if (reader.HasRows)
            {
                reader.Read();
                aDestinationUpazila = new DestinationUpazila();
                aDestinationUpazila.DestinationUpazilaId = (int)reader["DestinationUpazilaId"];
                aDestinationUpazila.DestinationUpazilaName = reader["DestinationUpazilaName"].ToString();
            }
            reader.Close();
            con.Close();
            return aDestinationUpazila;
        }
    }
}