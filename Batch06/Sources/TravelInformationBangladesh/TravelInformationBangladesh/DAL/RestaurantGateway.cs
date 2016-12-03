using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TravelInformationBangladesh.Model;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace TravelInformationBangladesh.DAL
{
    public class RestaurantGateway
    {
        //Configure connection string
        string connectionString = WebConfigurationManager.ConnectionStrings["TravelInformationBangladeshDBConnectionString"].ConnectionString;

        //Create a method for Saving Restaurant
        public int SaveRestaurant(Restaurant restaurant)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "INSERT INTO Restaurant VALUES('" + restaurant.RestaurantName + "','" + restaurant.RestaurantInformation + "'," + restaurant.TouristSpotId + ")";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            int rowAffected = cmd.ExecuteNonQuery();
            con.Close();

            return rowAffected;
        }

        //Create a method for retrieving data
        public List<Restaurant> GetAllRestaurant()
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM Restaurant";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            List<Restaurant> restaurants = new List<Restaurant>();
            while (reader.Read())
            {
                Restaurant restaurant = new Restaurant();
                restaurant.RestaurantId = (int)reader["RestaurantId"];
                restaurant.RestaurantName = reader["RestaurantName"].ToString();
                restaurant.RestaurantInformation = reader["RestaurantInformation"].ToString();

                restaurants.Add(restaurant);
            }
            reader.Close();
            con.Close();
            return restaurants;
        }

        //Create a method for checking Restaurant Name exist or not
        public Restaurant IsExist(Restaurant restaurant)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "SELECT * FROM Restaurant WHERE RestaurantName='" + restaurant.RestaurantName + "'";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            Restaurant aRestaurant = null;
            if (reader.HasRows)
            {
                reader.Read();
                aRestaurant = new Restaurant();
                aRestaurant.RestaurantId = (int)reader["RestaurantId"];
                aRestaurant.RestaurantName = reader["RestaurantName"].ToString();
                aRestaurant.RestaurantInformation = reader["RestaurantInformation"].ToString();
            }
            reader.Close();
            con.Close();
            return aRestaurant;
        }

        //Create a method for update Restaurant information
        public bool UpdateRestaurant(Restaurant restaurant)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string query = "UPDATE Restaurant SET RestaurantName='" + restaurant.RestaurantName + "','" + restaurant.RestaurantInformation + "' WHERE RestaurantId='" + restaurant.RestaurantId + "'";
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

        //Create a method for delete Restaurant information
        public bool DeleteRestaurant(int restaurantId)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connectionString;

            string query = "DELETE Restaurant WHERE RestaurantId=" + restaurantId;

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