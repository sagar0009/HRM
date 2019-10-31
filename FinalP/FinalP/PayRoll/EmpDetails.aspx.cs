using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using System.Windows.Forms;

namespace FinalP.PayRoll
{
    public partial class EmpDetails : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadDepartment();
                lbl.Text = "";
            }
        }

        private void LoadDepartment()
        {
            DdlDept.DataSource = objBll.GetJob("spGetDept", null);
            DdlDept.DataBind();
            ListItem liPost1 = new ListItem("Select Department", "-1");
            DdlDept.Items.Insert(0, liPost1);
            //ListItem liPost2 = new ListItem("All", "0");
            //DdlDept.Items.Insert(1, liPost2);
        }

        private void LoadEmployee(int did)
        {
            objBll.DeptId = did;
            DdlEmp.DataSource = objBll.GetEmp();
            DdlEmp.DataBind();
            ListItem liPost1 = new ListItem("Select Employee", "-1");
            DdlEmp.Items.Insert(0, liPost1);
        }

        protected void DdlDept_SelectedIndexChanged(object sender, EventArgs e)
        {
            int did= Convert.ToInt32(DdlDept.SelectedValue);
            DdlEmp.Items.Clear();
            LoadEmployee(did);            
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            DataTable dt = objBll.GetEmpByEid(Convert.ToInt32(DdlEmp.SelectedValue));
            if(dt.Rows.Count>0)
            {
                MultiView1.ActiveViewIndex = 0;
                ViewState["eid"] = dt.Rows[0]["EmpId"].ToString();
                LblName.Text = dt.Rows[0]["FirstName"].ToString();
                LblName.Text += dt.Rows[0]["LastName"].ToString();
                LblAdd.Text = dt.Rows[0]["Address"].ToString();
                LblAccNo.Text = dt.Rows[0]["BankAcN"].ToString();
                LblMobile.Text = dt.Rows[0]["Phone"].ToString();
                LblDegree.Text = dt.Rows[0]["Degree"].ToString();
                LblDpt.Text = dt.Rows[0]["DepartmentName"].ToString();
                LblEmail.Text = dt.Rows[0]["Email"].ToString();
                LblDesig.Text = dt.Rows[0]["PostName"].ToString();
                LblSalary.Text = dt.Rows[0]["Salary"].ToString();
                LblStatus.Text = dt.Rows[0]["EmpStatus"].ToString();
                LblBasicPay.Text = dt.Rows[0]["BasicPay"].ToString();
                LblMedAll.Text = dt.Rows[0]["MedAllow"].ToString();
                LblTravAll.Text = dt.Rows[0]["TravAllow"].ToString();
                LblLunAll.Text = dt.Rows[0]["LunchAll"].ToString();
                if(dt.Rows[0]["EmpStatus"].ToString()=="Active")
                {
                    BtnActive.Enabled = false;
                    BtnDel.Enabled = true;
                    BtnSusp.Enabled = true;
                }
                else if(dt.Rows[0]["EmpStatus"].ToString() == "Suspended")
                {
                    BtnActive.Enabled = true;
                    BtnDel.Enabled = true;
                    BtnSusp.Enabled = false;
                }               
                else
                {
                    BtnActive.Enabled = false;
                    BtnDel.Enabled = false;
                    BtnSusp.Enabled = false;
                }
            }
            else
            {
                lbl.Text = "No Record Found!!!";
            }            
        }
        protected void BtnActive_Click(object sender, EventArgs e)
        {
            objBll.UpdateEmpSts("Active", Convert.ToInt32(ViewState["EmpId"]));
            LblStatus.Text = "Active";
            BtnActive.Enabled = false;
            BtnDel.Enabled = true;
            BtnSusp.Enabled = true;
        }

        protected void BtnDel_Click(object sender, EventArgs e)
        {
            objBll.UpdateEmpSts("Resigned", Convert.ToInt32(ViewState["EmpId"]));
            objBll.UpdateEmpResignation(DateTime.Now, Convert.ToInt32(ViewState["EmpId"]));
            LblStatus.Text = "Resigned";
            BtnActive.Enabled = false;
            BtnDel.Enabled = false;
            BtnSusp.Enabled = false;
        }

        protected void BtnSusp_Click(object sender, EventArgs e)
        {
            objBll.UpdateEmpSts("Suspended", Convert.ToInt32(ViewState["EmpId"]));
            LblStatus.Text = "Suspended";
            BtnActive.Enabled = true;
            BtnDel.Enabled = true;
            BtnSusp.Enabled = false;
        }
    }
}