using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CollegeServiceLibrary;
using System.Data;
using Utilities;


namespace StudentRegistration
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            DBConnect objDB = new DBConnect();
            String sql = "SELECT * FROM Courses";
            gvInput.DataSource = objDB.GetDataSet(sql);
            gvInput.DataBind();
            
        }

        protected void nametxt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}