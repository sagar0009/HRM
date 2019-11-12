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
            //load view1
            LblFname.Text = dt.Rows[0]["FirstName"].ToString() + " " + dt.Rows[0]["LastName"].ToString();
            LblEm.Text = dt.Rows[0]["Email"].ToString();
            LblGender.Text = dt.Rows[0]["Gender"].ToString();
            LblMar.Text = dt.Rows[0]["MaritalStatus"].ToString();
            TBAdd.Text = dt.Rows[0]["Address"].ToString();
            LblMob.Text = dt.Rows[0]["Phone"].ToString();
            LblDept.Text = dt.Rows[0]["DepartmentName"].ToString();
            LblPost.Text = dt.Rows[0]["PostName"].ToString();
            LblCitN.Text = dt.Rows[0]["CITNo"].ToString();
            LblCitPer.Text = dt.Rows[0]["CITPer"].ToString() + " %";
            LblPfN.Text = dt.Rows[0]["PFNo"].ToString();
            LblPfPer.Text = dt.Rows[0]["PFPer"].ToString() + " %";
            LblPan.Text = dt.Rows[0]["PAN"].ToString();
            LblBank.Text = dt.Rows[0]["BankName"].ToString();

            //load view2
            LblAccNo.Text = dt.Rows[0]["BankAcN"].ToString();
            LblBpay.Text = dt.Rows[0]["BasicPay"].ToString();
            LblSal.Text = dt.Rows[0]["Salary"].ToString();           
            LblLnch.Text = dt.Rows[0]["LunchAll"].ToString();
            LblMed.Text = dt.Rows[0]["MedAllow"].ToString();
            LblTrav.Text = dt.Rows[0]["TravAllow"].ToString();            
            DataTable dataTable = objBll.SalDet(Convert.ToInt32(dt1.Rows[0]["EmpId"]),Convert.ToInt32(DdlYear.SelectedValue), DdlMonth.SelectedIndex);
            try
            {
                LblNetSal.Text = dataTable.Rows[0]["NetSal"].ToString();
                LblTax.Text = dataTable.Rows[0]["Tax"].ToString();
                LblTotWD.Text = dataTable.Rows[0]["TotWD"].ToString();
                LblLeave.Text = dataTable.Rows[0]["TotLeave"].ToString();
                LblLveDed.Text = dataTable.Rows[0]["TotDed"].ToString();
                LblPfEmp.Text = (Convert.ToInt32(dataTable.Rows[0]["PFAmt"])/2).ToString();
                LblCit.Text = dataTable.Rows[0]["CITAmt"].ToString();
                LblPf.Text = dataTable.Rows[0]["PFAmt"].ToString();
            }
            catch
            {
                MessageBox.Show("No record about salary generation and attendance\n only general details will be shown");
            }

        }

        protected void BtnDet_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            DdlMonth.Visible = false;
            DdlYear.Visible = false;
            BtnSelect.Visible = false;
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            DdlMonth.Visible = true;
            DdlYear.Visible = true;
            BtnSelect.Visible = false;
        }
    }
}