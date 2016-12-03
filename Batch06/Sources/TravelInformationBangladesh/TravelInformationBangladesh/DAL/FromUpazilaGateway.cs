using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.Model;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace TravelInformationBangladesh.DAL
{
    public class FromUpazilaGateway
    {
        //Configure connection string
        string connectionString = WebConfigurationManager.ConnectionStrings["TravelInformationBangladeshDBConnectionString"].ConnectionString;

        //Create a method for Save FromUpazila
        public int SaveFromUpazila(FromUpazila fromUpazila)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "INSERT INTO FromUpazila VALUES('" + fromUpazila.FromUpazilaName + "'," + fromUpazila.DistrictId + ")";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            int rowAffected = cmd.ExecuteNonQuery();
            con.Close();

            return rowAffected;
        }

        //Create a mmethod for checking FromUpazila Name exist or not
        public FromUpazila IsExist(FromUpazila fromUpazila)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM FromUpazila WHERE FromUpazilaName='" + fromUpazila.FromUpazilaName + "'";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            FromUpazila aFromUpazila = null;
            if (reader.HasRows)
            {
                reader.Read();
                aFromUpazila = new FromUpazila();
                aFromUpazila.FromUpazilaId = (int)reader["FromUpazilaId"];
                aFromUpazila.FromUpazilaName = reader["FromUpazilaName"].ToString();
            }
            reader.Close();
            con.Close();
            return aFromUpazila;
        }
    }
}