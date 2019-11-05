using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace FinalP.UserPage
{
    public partial class Complain : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = objBll.UserDet(Convert.ToInt32(Session["UserId"]));
                DataTable dt1 = objBll.UserEmp(dt.Rows[0]["Email"].ToString());
                GVComplain.DataSource = objBll.GetComplain(Convert.ToInt32(dt1.Rows[0]["EmpId"]));
                GVComplain.DataBind();
                LblComplain.Text = GVComplain.Rows.Count.ToString();
            }
        }

        protected void BtnComplain_Click(object sender, EventArgs e)
        {
            DataTable dt = objBll.UserDet(Convert.ToInt32(Session["UserId"]));
            DataTable dt1 = objBll.UserEmp(dt.Rows[0]["Email"].ToString());
            objBll.InsertComplain(Convert.ToInt32(dt1.Rows[0]["EmpId"]), TBSub.Text, TBMsg.Text, DateTime.Now.Date);
            LblComplain.Text = "complain Sent";
            GVComplain.DataSource = objBll.GetComplain(Convert.ToInt32(dt1.Rows[0]["EmpId"]));
            GVComplain.DataBind();
            LblComplain.Text = GVComplain.Rows.Count.ToString();
            TBMsg.Text = "";
            TBSub.Text = "";

        }
    }
}