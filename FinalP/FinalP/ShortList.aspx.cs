using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace FinalP
{
    public partial class ShortList : System.Web.UI.Page
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
            GVShortList.DataSource = null;
            GVShortList.DataSource = objBll.GetRecApp();
            GVShortList.DataBind();

        }
       
        protected void BtnBack_Click1(object sender, EventArgs e)
        {
            Response.Redirect("DashBoard.aspx");
        }

        protected void BtnDone_Click(object sender, EventArgs e)
        {
            Response.Redirect("WrittenTest.aspx");
        }
    }
}