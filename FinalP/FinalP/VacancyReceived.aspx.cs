using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace FinalP
{
    public partial class VacancyReceived : System.Web.UI.Page
    {
        ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetVacRecDetails();
            }
        }

        private void GetVacRecDetails()
        {
            GVAppRec.DataSource = null;
            GVAppRec.DataSource = objBll.GetRecApp();            
            GVAppRec.DataBind();

        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Visible = false;
            Response.Redirect("DashBoard.aspx");
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void BtnDone_Click(object sender, EventArgs e)
        { 
            
            Response.Redirect("ShortList.aspx");
        }
    }
}