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
    public partial class Leave : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
            Calendar2.Visible = false;
        }

        protected void LveStat_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            DataTable dt = objBll.UserDet(Convert.ToInt32(Session["UserId"]));
            DataTable dt1 = objBll.UserEmp(dt.Rows[0]["Email"].ToString());

            objBll.DeptId = Convert.ToInt32(dt1.Rows[0]["DeptId"]);
            objBll.EmpId = Convert.ToInt32(dt1.Rows[0]["EmpId"]);

            GVLveStat.DataSource = objBll.GetLeave("Pending");
            GVLveStat.DataBind();
            LblNew.Text = GVLveStat.Rows.Count.ToString();            
        }

        protected void BtnApply0_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = objBll.UserDet(Convert.ToInt32(Session["UserId"]));
                DataTable dt1 = objBll.UserEmp(dt.Rows[0]["Email"].ToString());
                objBll.DeptId = Convert.ToInt32(dt1.Rows[0]["DeptId"]);
                objBll.InsertLeave(Convert.ToInt32(dt1.Rows[0]["EmpId"]), TBRsn.Text, DdlDays.SelectedIndex + 1, DateTime.Now.Date, Convert.ToDateTime(TBStartDate.Text), Convert.ToDateTime(TBEndDate.Text));
                lbl.Text = "Apply for leave successfully";
                DdlDays.SelectedIndex = 0;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Something went wrong");
            }
        }

        protected void BtnApply_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TBStartDate.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible == false)
            {
                Calendar1.Visible = true;
                Calendar2.Visible = false;
            }
            else
            {
                Calendar1.Visible = false;
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible == false)
            {
                Calendar2.Visible = true;
                Calendar1.Visible = false;
            }
            else
            {
                Calendar2.Visible = false;
            }
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            TBEndDate.Text = Calendar2.SelectedDate.ToShortDateString();
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth || e.Day.Date < DateTime.Now)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            if (TBStartDate.Text != null)
            {
                if (e.Day.IsOtherMonth || e.Day.IsToday || e.Day.Date < Convert.ToDateTime(TBStartDate.Text)) 
                {
                    e.Day.IsSelectable = false;
                }
            }
            else
            {
                MessageBox.Show("Select start date");
            }
        }
    }
}