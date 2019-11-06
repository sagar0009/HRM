using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace FinalP.PayRoll
{
    public partial class Main : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LblDt.Text = "Records of " + DateTime.Now.Year.ToString() + "/" + DateTime.Now.AddMonths(-1).Month.ToString();                
                GetCount();
            }
        }

        private void GetCount()
        {
            DataSet dt = objBll.GetAllCount();
            LblActiveEmp.Text = dt.Tables[1].Rows[0][0].ToString();
            LblDeactEmp.Text = dt.Tables[2].Rows[0][0].ToString();
            LblEmp.Text = dt.Tables[0].Rows[0][0].ToString();
            LblNetSal.Text = dt.Tables[6].Rows[0][2].ToString();
            LblTotDed.Text = dt.Tables[6].Rows[0][1].ToString();
            LblTotSal.Text = dt.Tables[6].Rows[0][0].ToString();
        }
    }
}