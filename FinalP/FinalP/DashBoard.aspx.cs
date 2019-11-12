using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace FinalP
{
    public partial class DashBoard1 : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (DataPoint p in Chart1.Series["Series1"].Points)
                {
                    p.Label = "#PERCENT\n#VALX";
                }
                LblDt.Text = "Records of " + DateTime.Now.Year.ToString() + "/" + DateTime.Now.Month.ToString();
                //LblDt2.Text = "Records of " + DateTime.Now.Year.ToString() + "/" + DateTime.Now.AddMonths(-1).Month.ToString();
                GetCount();
            }
        }

        private void GetCount()
        {
            DataSet dt = objBll.GetAllCount();
            LblActiveEmp.Text = dt.Tables[1].Rows[0][0].ToString();
            LblDeactEmp.Text = dt.Tables[2].Rows[0][0].ToString();
            LblEmp.Text = dt.Tables[0].Rows[0][0].ToString();
            //LblSelCan.Text = dt.Tables[5].Rows[0][0].ToString();
            //LblTotApp.Text = dt.Tables[4].Rows[0][0].ToString();
            //LblTotVac.Text = dt.Tables[3].Rows[0][0].ToString();
            //LblNetSal.Text = dt.Tables[6].Rows[0][2].ToString();
            //LblTotDed.Text = dt.Tables[6].Rows[0][1].ToString();
            //LblTotSal.Text = dt.Tables[6].Rows[0][0].ToString();
            //LblAppLeave.Text = dt.Tables[8].Rows[0][0].ToString();
            //LblNewLeave.Text = dt.Tables[7].Rows[0][0].ToString();
            //LblRejLeave.Text = dt.Tables[9].Rows[0][0].ToString();
        }
    }
}