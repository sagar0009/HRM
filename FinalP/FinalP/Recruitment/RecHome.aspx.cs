using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace FinalP
{
    public partial class DashBoard : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LblDt.Text = "Records of " + DateTime.Now.Year.ToString() + "/" + DateTime.Now.Month.ToString();
                GetCount();                
            }

        }

        private void GetCount()
        {
            DataSet dt=objBll.GetAllCount();
            LblActiveEmp.Text = dt.Tables[1].Rows[0][0].ToString();
            LblDeactEmp.Text = dt.Tables[2].Rows[0][0].ToString();
            LblEmp.Text = dt.Tables[0].Rows[0][0].ToString();
            LblSelCan.Text = dt.Tables[5].Rows[0][0].ToString();
            LblTotApp.Text = dt.Tables[4].Rows[0][0].ToString();
            LblTotVac.Text = dt.Tables[3].Rows[0][0].ToString();
            
        }
    }
}