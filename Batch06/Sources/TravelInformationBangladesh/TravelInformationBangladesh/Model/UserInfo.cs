using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TravelInformationBangladesh.Model
{
    public class UserInfo
    {
        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Address { get; set; }
        public string Country { get; set; }
        public string Email { get; set; }
        public string Gender { get; set; }
        public string Phone { get; set; }

        public UserInfo(string firstName, string lastName, string userName, string password, string address, string country, string email, string gender, string phone)
        {
            this.FirstName = firstName;
            this.LastName = lastName;
            this.UserName = userName;
            this.Password = password;
            this.Address = address;
            this.Country = country;
            this.Email = email;
            this.Gender = gender;
            this.Phone = phone;
        }
        public UserInfo()
        {
 
        }
    }
}