using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BusinessLayer;

namespace FinalP.Attendance
{
    public partial class AttHome : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {                
                LblDt.Text = "Records of " + DateTime.Now.Year.ToString() + "/" + DateTime.Now.Month.ToString();
                GetCount();
            }
        }

        private void GetCount()
        {
            DataSet dt = objBll.GetAllCount();
            LblActiveEmp.Text = dt.Tables[1].Rows[0][0].ToString();
            LblDeactEmp.Text = dt.Tables[2].Rows[0][0].ToString();
            LblEmp.Text = dt.Tables[0].Rows[0][0].ToString();
            LblAppLeave.Text = dt.Tables[8].Rows[0][0].ToString();
            LblNewLeave.Text = dt.Tables[7].Rows[0][0].ToString();
            LblRejLeave.Text = dt.Tables[9].Rows[0][0].ToString();

        }
    }
}