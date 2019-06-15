using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalP
{
    public partial class PostVacancy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit1_Click(Object sender, EventArgs e)
        {
            Visible = false;
            Response.Redirect("MoreDetails.aspx");
        }

        protected void BtnSubmit2_Click(Object sender, EventArgs e)
        {
            Visible = false;
            Response.Redirect("DashBoard.aspx");
        }
    }
}