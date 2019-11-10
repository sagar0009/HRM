using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BusinessLayer;


namespace FinalP.MasterUser
{
    public partial class EditEmp : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDepartment();
                LoadEmployee();
                LoadRole();
                DsablTxtBx();
                BtnSave.Visible = false;
                DdlRole.Visible = false;
            }
        }

        private void LoadRole()
        {
            DdlRole.DataSource = objBll.GetJob("spGetRole", null);
            DdlRole.DataBind();
            ListItem liPost1 = new ListItem("Select Role", "-1");
            DdlRole.Items.Insert(0, liPost1);
        }
        private void LoadEmployee()
        {
            objBll.DeptId = Convert.ToInt32(DdlDept.SelectedValue);
            DdlEmp.DataSource = objBll.GetEmp();
            DdlEmp.DataBind();
            ListItem liPost1 = new ListItem("Select Employee", "-1");
            DdlEmp.Items.Insert(0, liPost1);
        }

        private void LoadDepartment()
        {
            DdlDept.DataSource = objBll.GetJob("spGetDept", null);
            DdlDept.DataBind();
            ListItem liPost1 = new ListItem("Select Department", "-1");
            DdlDept.Items.Insert(0, liPost1);
            ListItem liPost2 = new ListItem("All", "0");
            DdlDept.Items.Insert(1, liPost2);
        }


        protected void DdlDept_SelectedIndexChanged(object sender, EventArgs e)
        {
            objBll.DeptId = Convert.ToInt32(DdlDept.SelectedValue);
            LoadEmployee();
        }

        protected void BtnSelect_Click(object sender, EventArgs e)
        {
            if (DdlDept.SelectedValue != "-1")
            {
                if (DdlEmp.SelectedValue != "-1")
                {
                    try
                    {


                        MultiView1.ActiveViewIndex = 0;
                        DataTable dt = objBll.GetEmpDet(Convert.ToInt32(DdlEmp.SelectedValue));
                        TbPost.Text = dt.Rows[0]["PostName"].ToString();
                        Session["Eid"] = Convert.ToInt32(dt.Rows[0]["EmpId"]);
                        TbPFN.Text = dt.Rows[0]["PFNo"].ToString();
                        TbPan.Text = dt.Rows[0]["PAN"].ToString();
                        TbMarSts.Text = dt.Rows[0]["MaritalStatus"].ToString();
                        TbGender.Text = dt.Rows[0]["Gender"].ToString();
                        TbEmail.Text = dt.Rows[0]["Email"].ToString();
                        TbDept.Text = dt.Rows[0]["DepartmentName"].ToString();
                        TbDeg.Text = dt.Rows[0]["Degree"].ToString();
                        TbClass.Text = dt.Rows[0]["ClsName"].ToString();
                        TbCitPer.Text = dt.Rows[0]["CITPer"].ToString();
                        TbCit.Text = dt.Rows[0]["CITNo"].ToString();
                        TbBnkNam.Text = dt.Rows[0]["BankName"].ToString();
                        TbAdd.Text = dt.Rows[0]["Address"].ToString();
                        TbAccNo.Text = dt.Rows[0]["BankAcN"].ToString();
                        TBRole.Text = dt.Rows[0]["Role"].ToString();
                        BtnSave.Visible = false;
                    }
                    catch
                    {
                        MessageBox.Show("Error occurred");
                    }
                }
                else
                {
                    MessageBox.Show("Select Employee");
                }
            }
            else
            {
                MessageBox.Show("Select Department");
            }

        }

        private void DsablTxtBx()
        {
            TbAccNo.ReadOnly = true;
            TbAdd.ReadOnly = true;
            TbBnkNam.ReadOnly = true;
            TbCit.ReadOnly = true;
            TbCitPer.ReadOnly = true;
            TbClass.ReadOnly = true;
            TbDeg.ReadOnly = true;
            TbDept.ReadOnly = true;
            TbEmail.ReadOnly = true;
            TbGender.ReadOnly = true;
            TbMarSts.ReadOnly = true;
            TbPan.ReadOnly = true;
            TbPFN.ReadOnly = true;
            TbPost.ReadOnly = true;
        }

        private void EnableTxtBx()
        {
            TbPan.ReadOnly = true;
            TbPFN.ReadOnly = false;
            TbPost.ReadOnly = true;
            TbCit.ReadOnly = false;
            TbCitPer.ReadOnly = false;
            TbClass.ReadOnly = true;
            TbDeg.ReadOnly = true;
            TbDept.ReadOnly = true;
            TbAccNo.ReadOnly = true;
            TbAdd.ReadOnly = true;
            TbBnkNam.ReadOnly = true;
            TbMarSts.ReadOnly = true;
            TbEmail.ReadOnly = true;
            TbGender.ReadOnly = true;
            DdlRole.Visible = true;
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            DsablTxtBx();
            objBll.Address = TbPFN.Text;
            objBll.BankName = TbCit.Text;
            objBll.BankAcN = TbCitPer.Text;
            objBll.EmpId = Convert.ToInt32(Session["Eid"]);
            objBll.Degree = TBRole.Text;
            objBll.UpdateEmp2();
            MessageBox.Show("Details Updated successfully");
            BtnEdit.Visible = true;
            BtnSave.Visible = false;
            DdlRole.Visible = false;
        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            EnableTxtBx();
            BtnEdit.Visible = false;
            BtnSave.Visible = true;
        }
    }
}