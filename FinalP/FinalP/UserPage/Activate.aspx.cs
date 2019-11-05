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
    public partial class Activate : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAct_Click(object sender, EventArgs e)
        {
            if (TBEmail.Text != string.Empty)
            {
                if (TBCode.Text != string.Empty)
                {
                    DataTable dt = objBll.ApplicantDet(Convert.ToInt32(TBCode.Text), TBEmail.Text);
                    if (dt.Rows.Count > 0)
                    {
                        MessageBox.Show("Successfully Activated ");
                        objBll.UpdateEmpSts("Active", objBll.GetEmpByEmail(TBEmail.Text));
                        Response.Redirect("UPHome.aspx");
                    }
                    else
                    {
                        MessageBox.Show("UserEmail or activation code do not match");
                    }
                }
                else
                {
                    MessageBox.Show("Enter the code");
                }
            }
            else
            {
                MessageBox.Show("Enter the email");
            }
        }
    }
}