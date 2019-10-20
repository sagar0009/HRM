using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using System.Windows.Forms;
using System.Data;

namespace FinalP.Attendance
{
    public partial class AttendanceReport : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        public DateTime sDate;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                PopulateDept();
            }
        }

        private void PopulateDept()
        {
            DdlDept.DataSource = objBll.GetJob("spGetDept", null);
            DdlDept.DataBind();

            ListItem liPost = new ListItem("Select Department", "-1");
            DdlDept.Items.Insert(0, liPost);
        }
        protected void BtnSelect_Click(object sender, EventArgs e)
        {
            if(Calendar1.SelectedDate.ToShortDateString()!=null)
            {
                if(DdlDept.SelectedValue!="-1")
                {
                    objBll.selectDate = sDate;
                    PopulateAttendance();
                    LblCnt.Text = "Result = " + GVAttDetails.Rows.Count.ToString();
                }
                else
                {
                    MessageBox.Show("Select Department");
                }

            }
            else
            {
                MessageBox.Show("Select Date");
            }
        }

        private void PopulateAttendance()
        {
            GVAttDetails.DataSource = null;
            GVAttDetails.DataSource = objBll.GetAttendance();        
            GVAttDetails.DataBind();

        }

        protected void DdlDept_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            sDate = Convert.ToDateTime(Calendar1.SelectedDate.ToShortDateString().Trim());
        }
    }
}