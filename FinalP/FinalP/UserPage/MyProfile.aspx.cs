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
	public partial class EditDetails : System.Web.UI.Page
	{
        public ClsBll objBll = new ClsBll();        
		protected void Page_Load(object sender, EventArgs e)
		{
            if(!IsPostBack)
            {
                
                DsablTxtBx();
                try
                {
                    DataTable dt2 = objBll.UserDet(Convert.ToInt32(Session["UserId"]));
                    DataTable dt1 = objBll.UserEmp2(dt2.Rows[0]["Email"].ToString());
                    Session["Eid"] = Convert.ToInt32(dt1.Rows[0]["EmpId"]);
                    DataTable dt = objBll.GetEmpDet(Convert.ToInt32(Session["Eid"]));
                    TbPost.Text = dt.Rows[0]["PostName"].ToString();
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
                    BtnSave.Visible = false;
                }
                catch
                {
                    MessageBox.Show("No records found");
                }
            }
		}

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            EnableTxtBx();
            BtnEdit.Visible = false;
            BtnSave.Visible = true;
            DdlMarSts.Visible = true;
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
            TbPFN.ReadOnly = true;
            TbPost.ReadOnly = true;
            TbCit.ReadOnly = true;
            TbCitPer.ReadOnly = true;
            TbClass.ReadOnly = true;
            TbDeg.ReadOnly = true;
            TbDept.ReadOnly = true;
            TbAccNo.ReadOnly = false;
            TbAdd.ReadOnly = false;
            TbBnkNam.ReadOnly = false;                     
            TbDeg.ReadOnly = false;            
            TbEmail.ReadOnly = false;
            TbPan.ReadOnly = false;           
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            DdlMarSts.Visible = false;
            DsablTxtBx();
            objBll.Email = TbEmail.Text;
            objBll.Address = TbAdd.Text;
            objBll.BankName = TbBnkNam.Text;
            objBll.BankAcN = TbAccNo.Text;
            objBll.MarSts = TbMarSts.Text;
            objBll.Pan = TbPan.Text;
            objBll.Degree = TbDeg.Text;
            objBll.EmpId = Convert.ToInt32(Session["Eid"]);
            objBll.UpdateEmp();
            MessageBox.Show("Details Updated successfully");
            BtnEdit.Visible = true;
            BtnSave.Visible = false;
        }

        protected void DdlMarSts_SelectedIndexChanged(object sender, EventArgs e)
        {
            TbMarSts.Text = DdlMarSts.SelectedValue;
            EnableTxtBx();
        }
    }
}