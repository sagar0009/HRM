using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BusinessLayer;

namespace FinalP.UserPage
{
    public partial class SalaryDetails : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSelect_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            DataTable dt2 = objBll.UserDet(Convert.ToInt32(Session["UserId"]));
            DataTable dt1 = objBll.UserEmp(dt2.Rows[0]["Email"].ToString());
            DataTable dt = objBll.GetEmpByEid(Convert.ToInt32(dt1.Rows[0]["EmpId"]));
            LblAccNo.Text = dt.Rows[0]["BankAcN"].ToString();
            LblBasicPay.Text = dt.Rows[0]["BasicPay"].ToString();
            LblSalary.Text = dt.Rows[0]["Salary"].ToString();           
            LblLunAll.Text = dt.Rows[0]["LunchAll"].ToString();
            LblMedAll.Text = dt.Rows[0]["MedAllow"].ToString();
            LblTravAll.Text = dt.Rows[0]["TravAllow"].ToString();
            LblDept.Text = dt.Rows[0]["DepartmentName"].ToString();
            DataTable dataTable = objBll.SalDet(Convert.ToInt32(dt1.Rows[0]["EmpId"]),Convert.ToInt32(DdlYear.SelectedValue), DdlMonth.SelectedIndex);
            try
            {
                LblNetSal.Text = dataTable.Rows[0]["NetSal"].ToString();
                LblTotSal.Text = dataTable.Rows[0]["TotSal"].ToString();
                LblTotWD.Text = dataTable.Rows[0]["TotWD"].ToString();
                LblLeave.Text = dataTable.Rows[0]["TotLeave"].ToString();
                LblLeaveDeduce.Text = dataTable.Rows[0]["TotDed"].ToString();
            }
            catch
            {
                MessageBox.Show("No record about salary generation and attendance\n only general details will be shown");
            }

        }
    }
}