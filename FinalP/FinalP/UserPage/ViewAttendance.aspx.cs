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
    public partial class ViewAttendance : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSelect_Click(object sender, EventArgs e)
        {
            if (Calendar1.SelectedDate.ToShortDateString() != null)
            {
                DataTable dt = objBll.UserDet(Convert.ToInt32(Session["UserId"]));
                DataTable dt1 = objBll.UserEmp(dt.Rows[0]["Email"].ToString());
                objBll.selectDate = Convert.ToDateTime(Calendar1.SelectedDate.ToShortDateString().Trim());
                GVAttDetails.DataSource = null;
                GVAttDetails.DataSource = objBll.GetAttByEid(Convert.ToInt32(dt1.Rows[0]["EmpId"]));
                GVAttDetails.DataBind();
                LblCnt.Text = "Result = " + GVAttDetails.Rows.Count.ToString();
            }
            else
            {
                MessageBox.Show("Select Date");
            }
        }
    }
}