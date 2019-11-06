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
            if(Session["UserEmail"]!=null)
            {
                MessageBox.Show("Already Logged in");
                MessageBoxButtons mbtn = MessageBoxButtons.YesNo;
                DialogResult res = MessageBox.Show("Do you want to log out?", "Logout request", mbtn);
                if (res == DialogResult.Yes)
                {
                    Session["UserEmail"] = null;
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Redirect("JPHome.aspx");
                }
            }
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
                        Session["UserEmail"] = Request["Email"];
                        objBll.ApplicantEmail = Session["UserEmail"].ToString();
                        Session["UserId"]=Convert.ToInt32(objBll.GetUserByEmail()); 
                        if(Session["VacancyNumber"]!=null)
                        {
                            Response.Redirect("PostVacancy.aspx");
                        }
                        else if (Session["UserPage"].ToString() != null)
                        {
                            Response.Redirect("~/UserPage/UPHome.aspx");
                        }
                        else
                        {
                            Response.Redirect("JPHome.aspx");
                        }
                        //Response.Write("<script>");
                        //Response.Write("window.open('PostVacamcy.aspx','_blank')");
                        //Response.Write("</script>");
                        
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