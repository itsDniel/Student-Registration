using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CollegeServiceLibrary
{
    public class Course
    {
        private string crn { get; set; }
        private string depCode { get; set; }
        private string title { get; set; }
        private string days { get; set; }
        private string time { get; set; }
        private string professor { get; set; }
        private string credit { get; set; }
        private string delivery { get; set; }
        private string fees { get; set; }
        private string seat { get; set; }
        private Double cost { get; set; }

        public static double costCalc (Double a, Double b)
        {
            Double total = 200 * a + b;
            return total;
        }
        
        public Course(string crn, string depCode, string title, string days, string time, string professor, string credit, string delivery, string fees, string seat)
        {
            this.crn = crn;
            this.depCode = depCode;
            this.title = title;
            this.days = days;
            this.time = time;
            this.professor = professor;
            this.credit = credit;
            this.delivery = delivery;
            this.fees = fees;
            this.seat = seat;
            this.cost = costCalc(double.Parse(credit), double.Parse(fees));
        }
    }
}
