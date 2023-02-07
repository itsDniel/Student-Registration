using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CollegeServiceLibrary
{
    public class Student
    {
        private string name { get; set; }
        private string id { get; set; }
        private string email { get; set; }
        private string address { get; set; }
        private string status {get; set;}
        private string payment { get; set; }


        public Student(string name, string id, string email, string address, string status, string payment)
        {
            this.name = name;
            this.id = id;
            this.email = email;
            this.address = address;
            this.status = status;
            this.payment = payment;
        }

        public override string ToString()
        {
            string a = "Name: " + name + "<br>" + "ID: " + id + "<br>" + "Email: " + email + "<br>" + "Address: " + address + "<br>" + "Status: " + status + "<br>" + "Payment Option: " + payment + "<br>";
            return a;
        }
    }
}
