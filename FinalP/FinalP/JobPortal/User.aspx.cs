using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace FinalP.JobPortal
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserEmail"] == null)
            {
                MessageBox.Show("User Not Logged in");
                MessageBoxButtons mbtn = MessageBoxButtons.YesNo;
                DialogResult res = MessageBox.Show("Do you want to log in?", "Login request", mbtn);
                if (res == DialogResult.Yes)
                {                   
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            }
        }
    }
}