using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CollegeServiceLibrary
{
    public class Student
    {
        public string name { get; set; }
        public string id { get; set; }
        public string email { get; set; }
        public string address { get; set; }
        public string status {get; set;}
        public string payment { get; set; }


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
