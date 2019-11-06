using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BusinessLayer;

namespace FinalP.MasterUser
{
    public partial class EditDept : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                LoadGv();
            }
        }

        private void LoadGv()
        {
            GVDept.DataSource = null;
            GVDept.DataSource = objBll.GetDept();
            GVDept.DataBind();
        }
        protected void GVDept_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["did"] = e.CommandArgument.ToString();
            if (e.CommandName=="Remove")
            {
                
                objBll.UpdateDeptSts(Convert.ToInt32(e.CommandArgument.ToString()));
                LoadGv();
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            if (TBDept.Text != null||DdlSts.SelectedIndex>0)
            {
                objBll.UpdateDept(TBDept.Text, Convert.ToInt32(Session["did"]));
                MultiView1.ActiveViewIndex = 0;
            }
            else
            {
                MessageBox.Show("Enter the new name and status");
            }
        }

        protected void LnkEdit_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            if (TBDeptName.Text != string.Empty)
            {
                objBll.InsertDept(TBDeptName.Text);
            }
        }
    }
}