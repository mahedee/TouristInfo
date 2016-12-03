using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.Model;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace TravelInformationBangladesh.DAL
{
    public class DivisionGateway
    {
        //Configure connection string
        string connectionString = WebConfigurationManager.ConnectionStrings["TravelInformationBangladeshDBConnectionString"].ConnectionString;

        //Create a method for Saving division
        public int SaveDivision(Division division)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "INSERT INTO Division VALUES('" + division.DivisionName + "')";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            int rowAffected = cmd.ExecuteNonQuery();
            con.Close();

            return rowAffected;
        }

        //Create a method for retrieving data
        public List<Division> GetAllDivisions()
        {
            SqlConnection con = new SqlConnection(connectionString);
            
            string query = "SELECT * FROM Division";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            List<Division> divisions = new List<Division>();
            while (reader.Read())
            {
                Division division = new Division();
                division.DivisionId = (int)reader["DivisionId"];
                division.DivisionName = reader["DivisionName"].ToString();

                divisions.Add(division);
            }
            reader.Close();
            con.Close();
            return divisions;
        }

        //Create a mmethod for checking Division Name exist or not
        public Division IsExist(Division division)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM Division WHERE DivisionName='" + division.DivisionName + "'";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            Division aDivision = null;
            if (reader.HasRows)
            {
                reader.Read();
                aDivision = new Division();
                aDivision.DivisionId = (int)reader["DivisionId"];
                aDivision.DivisionName = reader["DivisionName"].ToString();
            }
            reader.Close();
            con.Close();
            return aDivision;
        }

        //Create a method for update division data
        public bool UpdateDivision(Division division)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "UPDATE Division SET DivisionName='" + division.DivisionName + "' WHERE DivisionId='" + division.DivisionId + "'";
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

        //Create a method for delete division data
        public bool DeleteDivision(int divisionId)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connectionString;

            string query = "DELETE Division WHERE DivisionId=" + divisionId;

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

        //Create a method for GetDivisionByID
        public Division GetDivisionById(int id)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM Division WHERE DivisionId=" + id;
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            Division divisioin = null;
            while (reader.Read())
            {
                divisioin = new Division();
                divisioin.DivisionId = (int)reader["DivisionId"];
                divisioin.DivisionName = reader["DivisionName"].ToString();
            }
            reader.Close();
            con.Close();
            return divisioin;
        }
    }
}