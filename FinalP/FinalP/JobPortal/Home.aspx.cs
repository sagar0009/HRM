using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace FinalP.JobPortal
{
    public partial class Home : System.Web.UI.Page
    {
        ClsBll objBll = new ClsBll();
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
            DataList1.DataSource = objBll.GetRecApp();
            DataList1.DataBind();                      
        }

        protected void BtnDetails_Click(object sender, EventArgs e)
        {
            int vId = Convert.ToInt32(((Button)sender).CommandArgument);
            Session["VacancyNumber"] = vId;
            Response.Redirect("PostVacancy.aspx");
        }
    }
}