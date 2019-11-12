using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BusinessLayer;

namespace FinalP.PayRoll
{
    public partial class GenerateSalary : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        private double pf = 0, cit = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDepartment();
                lbl.Text = "";
            }
        }

        private void LoadDepartment()
        {
            DdlDept.DataSource = objBll.GetJob("spGetDept", null);
            DdlDept.DataBind();
            ListItem liPost1 = new ListItem("SELECT", "-1");
            DdlDept.Items.Insert(0, liPost1);
            //ListItem liPost2 = new ListItem("All", "0");
            //DdlDept.Items.Insert(1, liPost2);
        }

        private void LoadEmployee(int did)
        {
            objBll.DeptId = did;
            DdlEmp.DataSource = objBll.GetEmp();
            DdlEmp.DataBind();
            ListItem liPost1 = new ListItem("SELECT", "-1");
            DdlEmp.Items.Insert(0, liPost1);
        }

        protected void DdlDept_SelectedIndexChanged(object sender, EventArgs e)
        {
            int did = Convert.ToInt32(DdlDept.SelectedValue);
            DdlEmp.Items.Clear();
            LoadEmployee(did);
        }

        protected void BtnSelect_Click(object sender, EventArgs e)
        {            
            MultiView1.ActiveViewIndex = 0;
            DataTable dt = objBll.GetEmpByEid(Convert.ToInt32(DdlEmp.SelectedValue));
            LblAccNo.Text = dt.Rows[0]["BankAcN"].ToString();
            LblBasicPay.Text = dt.Rows[0]["BasicPay"].ToString();
            LblSalary.Text = dt.Rows[0]["Salary"].ToString();
            LblCitNo.Text= dt.Rows[0]["CITNo"].ToString();
            LblPfNo.Text= dt.Rows[0]["PFNo"].ToString();
            LblName.Text = dt.Rows[0]["FirstName"].ToString();
            LblName.Text += "\t"+dt.Rows[0]["LastName"].ToString();
            LblLunAll.Text = dt.Rows[0]["LunchAll"].ToString();
            LblMedAll.Text = dt.Rows[0]["MedAllow"].ToString();
            LblTravAll.Text = dt.Rows[0]["TravAllow"].ToString();
            LblDept.Text = dt.Rows[0]["DepartmentName"].ToString();

            DataTable dt1 = objBll.TotWD(Convert.ToInt32(DdlYear.SelectedValue), DdlMonth.SelectedIndex);
            LblTotWD.Text = dt1.Rows[0][0].ToString();
            string date = DdlYear.SelectedValue.ToString() + "-" + DdlMonth.SelectedIndex + "-" + 1;
            DateTime dateTime = Convert.ToDateTime(date);
            DataTable dt2 = objBll.AbsDays(dateTime, Convert.ToInt32(DdlEmp.SelectedValue));
            LblLeave.Text = dt2.Rows[0][0].ToString();
            LblTotSal.Text = (Convert.ToInt32(LblSalary.Text) + Convert.ToInt32(LblBasicPay.Text) + Convert.ToInt32(LblMedAll.Text) + Convert.ToInt32(LblTravAll.Text) + Convert.ToInt32(LblLunAll.Text)).ToString();
            LblLeaveDeduce.Text = Convert.ToString(Convert.ToInt32(LblSalary.Text) / 30 * int.Parse(LblLeave.Text));            

            //tax calculation
            double tax = 0;
            pf = Convert.ToInt32(dt.Rows[0]["PFPer"]) * Convert.ToInt32(LblSalary.Text) / 100;
            cit = Convert.ToInt32(dt.Rows[0]["CITPer"]) * Convert.ToInt32(LblSalary.Text) / 100;
            double GrossSal =Convert.ToInt32(LblTotSal.Text) - Convert.ToInt32(LblLeaveDeduce.Text) - pf - cit;
            if(12*GrossSal<=350000)
            {
                tax = 0.01 * GrossSal;
            }
            else if(12*GrossSal<=450000)
            {
                tax = 3500 + 0.1 * (12 * GrossSal - 350000);
            }
            else if (12 * GrossSal <= 650000)
            {
                tax = 13500 + 0.2 * (12 * GrossSal - 450000);
            }
            else if (12 * GrossSal <= 2000000)
            {
                tax = 53500 + 0.3 * (12 * GrossSal - 650000);
            }
            else
            {
                tax = 458500 + .36 * (12 * GrossSal - 2000000);
            }
            LblTax.Text = tax.ToString();

            LblNetSal.Text = Convert.ToString(12 * GrossSal - tax);
        }
        
        protected void BtnGenerate_Click(object sender, EventArgs e)
        {
            try
            {
                objBll.InsertSalDet(Convert.ToInt32(DdlEmp.SelectedValue),Convert.ToInt32(LblTax.Text), Convert.ToInt32(LblTotWD.Text), Convert.ToInt32(LblLeave.Text), Convert.ToInt32(LblTotSal.Text), Convert.ToInt32(LblLeaveDeduce.Text), Convert.ToInt32(LblNetSal.Text), Convert.ToInt32(DdlYear.SelectedValue.ToString()), Convert.ToInt32(DdlMonth.SelectedIndex),pf,cit);
                MessageBox.Show("salary of "+"'" + LblName.Text + "'\n"+ " for Year " + DdlYear.SelectedItem.Text + " Month " + DdlMonth.SelectedItem.Text+"\n Inserted Successfully");
                MultiView1.ActiveViewIndex = -1;
            }
            catch(Exception ex)
            {
                MessageBox.Show("Data Already exist" );
            }
        }       
    }
}