using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using System.Data;

namespace FinalP.Attendance
{
    public partial class Complain : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            if (!IsPostBack)
            {
                GVComplain.DataSource = objBll.GetComplain(0);
                GVComplain.DataBind();
                LblComplain.Text = GVComplain.Rows.Count.ToString();
            }
        }

        protected void GVComplain_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            objBll.CmpId = Convert.ToInt32(e.CommandArgument.ToString());
            DataTable dt = objBll.GetCmpById();
            LblEid.Text = dt.Rows[0]["EmpId"].ToString();
            LblCmp.Text = dt.Rows[0]["Message"].ToString();
            LblSub.Text = dt.Rows[0]["Subject"].ToString();
            string rply = dt.Rows[0]["Reply"].ToString();
            if(rply!="")
            {
                BtnReply.Text = "Update Reply";
                TBAns.Text = rply;
            }
            ViewState["cid"] = dt.Rows[0]["CmpId"].ToString();
        }

        protected void GVComplain_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnReply_Click(object sender, EventArgs e)
        {
            objBll.CmpId = Convert.ToInt32(ViewState["cid"].ToString());
            objBll.Reply = TBAns.Text;
            objBll.UpdateCmpReply();
            TBAns.Text = "";
            MultiView1.ActiveViewIndex = 0;
            GVComplain.DataSource = objBll.GetComplain(0);
            GVComplain.DataBind();
            LblComplain.Text = GVComplain.Rows.Count.ToString();            
        }
    }
}