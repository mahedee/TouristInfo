using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TravelInformationBangladesh.Model
{
    public class Commenter
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Comment { get; set; }
        public Commenter(string name, string email, string comment)
        {
            this.Name = name;
            this.Email = email;
            this.Comment = comment;
        }
        public Commenter(string name,string email)
        {
            this.Name = name;
            this.Email = email;
        }
        public Commenter()
        {
 
        }
    }
}