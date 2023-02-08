using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CollegeServiceLibrary
{
    public class Course
    {
        public string Delivery { get; set; }
        public string CRN { get; set; }
        public string DepartmentCode { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Days { get; set; }
        public string Time { get; set; }
        public string Semester { get; set; }
        public string Professor { get; set; }
        public string Credit { get; set; }
        public string Fees { get; set; }
        public string Seat { get; set; }
        public Double Cost { get; set; }

        public static double costCalc (Double a, Double b)
        {
            Double total = 200 * a + b;
            return total;
        }
        
        public Course(string delivery, string crn, string depCode, string title, string description, string days, string time, string semester, string professor, string credit, string fees, string seat, double cost)
        {
            this.CRN = crn;
            this.DepartmentCode = depCode;
            this.Title = title;
            this.Description = description;
            this.Days = days;
            this.Time = time;
            this.Semester = semester;
            this.Professor = professor;
            this.Credit = credit;
            this.Delivery = delivery;
            this.Fees = fees;
            this.Seat = seat;
            this.Cost = cost;
        }
    }
}
