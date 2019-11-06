using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BusinessLayer;

namespace FinalP.UserPage
{
    public partial class UPHome : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserEmail"] == null)
            {
                MessageBox.Show("User Not Logged in");
                MessageBoxButtons mbtn = MessageBoxButtons.YesNo;
                DialogResult res = MessageBox.Show("Do you want to log in?", "Login request", mbtn);
                if (res == DialogResult.Yes)
                {
                    Session["UserPage"] = "1";
                    Response.Redirect("~/JobPortal/Login.aspx");
                }
                else
                {
                    Response.Redirect("~/JobPortal/JPHome.aspx");
                }
            }
        }
    }
}