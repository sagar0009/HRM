using System;
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
            
            MessageBoxButtons Btn = MessageBoxButtons.YesNo;
            DialogResult res = MessageBox.Show("Do you want to apply for the post?","Apply Form",Btn);
            if(res==DialogResult.Yes)
            {
                Response.Redirect("Confirmation.aspx");
            }
        }

        protected void BtnSubmit2_Click(Object sender, EventArgs e)
        {
            Visible = false;
            Response.Redirect("DashBoard.aspx");
        }
    }
}