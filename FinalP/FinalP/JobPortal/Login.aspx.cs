using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using System.Windows.Forms;

namespace FinalP.JobPortal
{
    public partial class Login : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            bool userunavailable;
            userunavailable = Checkusername(Request["Email"]);
            if (Request["Email"] !=string.Empty && Request["Password"] !=string.Empty)
            {
                if (!userunavailable)
                {
                    string query = "select Password from UserSignUp where Email='" + Request["Email"] + "'";
                    string pw = string.Empty;
                    pw=  objBll.ValidatePw(query,pw);
                    if (pw == Request["Password"])
                    {                        
                        Response.Redirect("User.aspx");
                    }
                    else
                    {
                        MessageBox.Show("Wrong email or password");
                    }
                }
                else
                {
                    MessageBox.Show("Username doesn't exist");
                }
            }
            else
            {
                MessageBox.Show("Empty username or password");
            }
        }
        public bool Checkusername(String username)
        {
            bool userstatus = true;
            string query = "Select * from UserSignup where Email='" + Request["Email"] + "'";
            userstatus = objBll.CheckEmail(query, userstatus);
            return userstatus;
        }
    }
}