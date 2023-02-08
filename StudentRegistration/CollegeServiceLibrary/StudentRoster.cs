using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CollegeServiceLibrary
{
    public class StudentRoster
    {
        List<Course> b = new List<Course>();
        public List<Course> addCourse(Course a)
        {
            //List<Course> b = new List<Course>;
            b.Add(a);
            return b;
        }
    }
}
