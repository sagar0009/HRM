﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BusinessLayer;

namespace FinalP.PayRoll
{
    public partial class PayRoll : System.Web.UI.MasterPage
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["EmpEmail"] == null)
                {
                    MessageBox.Show("User Not Logged in");
                    MessageBoxButtons mbtn = MessageBoxButtons.YesNo;
                    DialogResult res = MessageBox.Show("Do you want to log in?", "Login request", mbtn);
                    if (res == DialogResult.Yes)
                    {
                        Session["Pay"] = "1";
                        Response.Redirect("~/LogIn.aspx");
                    }
                    else
                    {
                        MessageBox.Show("Cannot Access Module without logging in");
                        Response.Redirect("~/DashBoard.aspx");
                    }
                }
                else
                {
                    DataTable dt = objBll.UserEmp(Session["EmpEmail"].ToString());

                    if (dt.Rows.Count > 0)
                    {
                        if (dt.Rows[0]["RoleId"].ToString() == "3" || dt.Rows[0]["RoleId"].ToString() == "1")
                        {
                            ImgUser.ImageUrl = dt.Rows[0]["ImageUrl"].ToString();
                            LblUserName.Text = dt.Rows[0]["FirstName"].ToString() + "  " + dt.Rows[0]["LastName"].ToString();
                        }
                        else
                        {
                            MessageBox.Show("Employee with input credentials are not allowed to access this module");
                            Session["Pay"] = null;
                            Session["EmpEmail"] = null;
                            Response.Redirect("~/DashBoard.aspx");
                        }
                    }
                    else
                    {
                        MessageBox.Show("Employee Doesnot Exist");
                        Session["Pay"] = null;
                        Session["EmpEmail"] = null;
                        Response.Redirect("~/DashBoard.aspx");
                    }
                }
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Session["Pay"] = null;
            Session["EmpEmail"] = null;
            Response.Redirect("~/DashBoard.aspx");
        }

        
    }
}