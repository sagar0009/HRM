using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalP
{
    public partial class DashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LblYr.Text = DateTime.Now.Year.ToString();
                LblMn.Text = DateTime.Now.Month.ToString();
            }
        }
    }
}