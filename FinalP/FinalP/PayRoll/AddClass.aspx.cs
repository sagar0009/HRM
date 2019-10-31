using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BusinessLayer;

namespace FinalP.PayRoll
{
    public partial class AddClass : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadClass();
            }
        }

        private void LoadClass()
        {
            GVClass.DataSource = null;
            GVClass.DataSource = objBll.GetJob("spGetClass", null);
            GVClass.DataBind();
            Label1.Text = GVClass.Rows.Count.ToString() +"  Class found";
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            objBll.InsertClass(TBClass.Text, Convert.ToInt32(TBBasicPay.Text), Convert.ToInt32(TBSalary.Text), Convert.ToInt32(TBTravAll.Text), Convert.ToInt32(TBMedAll.Text), Convert.ToInt32(TBLunchAll.Text));
            MessageBox.Show("Class  " + TBClass.Text + "  added");
            LoadClass();
            ClearAll();
        }

        public void ClearAll()
        {
            TBBasicPay.Text = "";TBClass.Text = "";TBLunchAll.Text = "";
            TBMedAll.Text = "";TBSalary.Text = "";TBTravAll.Text = "";
        }
        protected void GVClass_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}