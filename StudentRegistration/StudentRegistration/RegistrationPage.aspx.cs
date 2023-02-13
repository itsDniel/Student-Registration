using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CollegeServiceLibrary;
using System.Data;
using Utilities;
using System.Data.SqlClient;


namespace StudentRegistration
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                DBConnect objDB = new DBConnect();
                String sql = "SELECT * FROM Courses";
                gvInput.DataSource = objDB.GetDataSet(sql);
                gvInput.DataBind();
                
            }
        }

        protected void nametxt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            if (IsPostBack && chckvalidator.IsValid)
            {
                DBConnect objDB = new DBConnect();
                SqlCommand updateSQL;
                
                List<Course> roster = new List<Course>();
                gvInput.Visible = false;
                Student student = new Student(nametxt.Text, idtxt.Text, emailtxt.Text, addresstxt.Text, statusddl.Text, paymentddl.Text);
                namelbl.Visible = false;
                nametxt.Visible = false;
                idlbl.Visible = false;
                idtxt.Visible = false;
                emaillbl.Visible = false;
                emailtxt.Visible = false;
                addresslbl.Visible = false;
                addresstxt.Visible = false;
                phonelbl.Visible = false;
                phoneNumbertxt.Visible = false;
                statusddl.Visible = false;
                statuslbl.Visible = false;
                paymentddl.Visible = false;
                paymentlbl.Visible = false;
                Course studentCourse;
                StudentRoster studentRoster = new StudentRoster();
                CheckBox chk;
                DropDownList ddl;
                int newSeat;

                testlbl.Text = student.ToString();



                for (int i = 0; i < gvInput.Rows.Count; i++)
                {
                    chk = (CheckBox)gvInput.Rows[i].FindControl("sectionchck");
                    ddl = (DropDownList)gvInput.Rows[i].FindControl("deliveryddl");
                    if (chk.Checked)
                    {
                        string delivery = ddl.SelectedValue;
                        string crn = gvInput.Rows[i].Cells[2].Text;
                        string dep = gvInput.Rows[i].Cells[3].Text;
                        string title = gvInput.Rows[i].Cells[4].Text;
                        string description = gvInput.Rows[i].Cells[5].Text;
                        string days = gvInput.Rows[i].Cells[6].Text;
                        string time = gvInput.Rows[i].Cells[7].Text;
                        string semester = gvInput.Rows[i].Cells[8].Text;
                        string professor = gvInput.Rows[i].Cells[9].Text;
                        string credit = gvInput.Rows[i].Cells[10].Text;
                        string fees = gvInput.Rows[i].Cells[11].Text;
                        string seats = gvInput.Rows[i].Cells[12].Text;
                        newSeat = int.Parse(seats) - 1; // Seat available decrease by 1 after registering
                        Double cost = Course.costCalc(double.Parse(credit), double.Parse(fees));

                        studentCourse = new Course(delivery, crn, dep, title,description, days, time, semester, professor, credit, fees, newSeat.ToString(), cost);
                        roster = studentRoster.addCourse(studentCourse);
                        updateSQL = new SqlCommand("UPDATE Courses SET TotalAvailableSeats =" + newSeat.ToString() + "WHERE CRN =" + crn);
                        objDB.DoUpdate(updateSQL);
                        
                        
                        

                    }
                }
                


                gvOutput.Visible = true;
                btnSubmit.Visible = false;
                gvOutput.DataSource = roster;
                gvOutput.DataBind();
               
            }
        }

        protected void chckvalidator_ServerValidate(object source, ServerValidateEventArgs args) //Method to check if there is at least 1 checked checkbox
        {
            
            int count = 0;
            foreach (GridViewRow row in gvInput.Rows)
            {
                if (((CheckBox)row.FindControl("sectionchck")).Checked)
                {
                    count++;
                    
                }
                
            }
            if(count > 0)
            {
                args.IsValid = true;
                
            }
            else
            {
                args.IsValid = false;
                
            }
        }

     
    }
}