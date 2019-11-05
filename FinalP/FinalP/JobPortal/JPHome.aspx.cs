using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace FinalP.JobPortal
{
    public partial class Home : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetJDetails();               
            }
        }

        private void GetJDetails()
        {
            DataList1.DataSource = null;
            DataList1.DataSource = objBll.GetAllVac(0);
            DataList1.DataBind();  
            
        }

        protected void BtnDetails_Click(object sender, EventArgs e)
        {
            int vId = Convert.ToInt32(((Button)sender).CommandArgument);
            Session["VacancyNumber"] = vId;
            DataTable dt = objBll.GetAllVac(vId);           
            Session["sts"] = Convert.ToString(dt.Rows[0]["statuss"]);        
            Response.Redirect("PostVacancy.aspx");
        }
    }
}