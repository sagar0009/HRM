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
    public partial class UPMaster : System.Web.UI.MasterPage
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = objBll.UserDet(Convert.ToInt32(Session["UserId"]));
                LblUserName.Text = dt.Rows[0]["Fname"].ToString() + "  " + dt.Rows[0]["Lname"].ToString();
                DataTable dt1 = objBll.UserEmp(dt.Rows[0]["Email"].ToString());
                if (dt1.Rows.Count > 0)
                {
                    BtnActivte.Enabled = false;
                    BtnSts.Enabled = false;
                }
                else
                {
                    BtnAtt.Enabled = false;
                    BtnSal.Enabled = false;
                }
            }
        }
    }
}