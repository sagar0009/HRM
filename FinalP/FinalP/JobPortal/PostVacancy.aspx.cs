using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;


namespace FinalP
{
    public partial class PostVacancy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit1_Click(Object sender, EventArgs e)
        {
            if (IsPostBack)
            {

                MessageBoxButtons Btn = MessageBoxButtons.YesNo;
                DialogResult res = MessageBox.Show("Do you want to apply for the post?", "Apply Form", Btn);
                if (res == DialogResult.Yes)
                {
                    Response.Redirect("Confirmation.aspx");
                }
            }
        }

        
    }
}