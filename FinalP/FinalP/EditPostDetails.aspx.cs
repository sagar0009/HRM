using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using System.Windows.Forms;

namespace FinalP
{
    public partial class EditPostDetails : System.Web.UI.Page
    {
        ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateSkillType();
                GetAvlPost();
            }
        }

        private void GetAvlPost()
        {
            GvAvlPost.DataSource = null;
            GvAvlPost.DataSource = objBll.GetAvlPost();
            GvAvlPost.DataBind();

        }


        public void GetDet()
        {
            objBll.PostName = TBPostName.Text;
            objBll.Salary = Convert.ToInt32(TBSalary.Text);
            objBll.AcaQua = TBQuali.Text;
            objBll.ExpReq = Convert.ToInt32(TBExpReq.Text);
            if (DdlStatus.SelectedValue != "-1")
            {
                objBll.Status = Convert.ToBoolean(DdlStatus.SelectedValue);
            }
            if (DdlSkill.SelectedValue != "-1")
            {
                objBll.SkillId = Convert.ToInt32(DdlSkill.SelectedValue);
            }
        }

        public void PopulateSkillType()
        {
            DdlSkill.DataSource = objBll.GetJob("spGetSkill", null);
            DdlSkill.DataBind();

            ListItem liPost = new ListItem("Select SkillType", "-1");
            DdlSkill.Items.Insert(0, liPost);
        }

        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            if (DdlSkill.SelectedValue != "-1")
            {
                if (DdlStatus.SelectedValue != "-1")
                {
                    if (TBPostName.Text != string.Empty && TBSalary.Text != string.Empty && TBQuali.Text != string.Empty && TBExpReq.Text != string.Empty)
                    {
                        GetDet();
                        objBll.StatementType = "Insert";
                        objBll.EditPost();                       
                        MessageBox.Show("Successfully Added");
                        GetAvlPost();
                        Response.Redirect("EditPostDetails.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please fill out all the fields')", true);
                    }
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please select the Job Status')", true);
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please select the SkillType')", true);
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            if (DdlSkill.SelectedValue != "-1")
            {
                if (DdlStatus.SelectedValue != "-1")
                {
                    if (TBPostName.Text != string.Empty && TBSalary.Text != string.Empty && TBQuali.Text != string.Empty && TBExpReq.Text != string.Empty)
                    {
                        GetDet();
                        objBll.StatementType = "Update";
                        objBll.EditPost();
                        MessageBox.Show("Successfully Updated");
                        GetAvlPost();
                        Response.Redirect("EditPostDetails.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please fill out all the fields')", true);
                    }
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please select the Job Status')", true);
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please select the SkillType')", true);
            }
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            if (DdlSkill.SelectedValue != "-1")
            {
                if (DdlStatus.SelectedValue != "-1")
                {
                    if (TBPostName.Text != string.Empty && TBSalary.Text != string.Empty && TBQuali.Text != string.Empty && TBExpReq.Text != string.Empty)
                    {
                        GetDet();
                        objBll.StatementType = "Delete";
                        objBll.EditPost();
                        MessageBox.Show("Successfully Deleted");
                        GetAvlPost();
                        Response.Redirect("EditPostDetails.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please fill out all the fields')", true);
                    }
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please select the Job Status')", true);
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please select the SkillType')", true);
            }
        }

        protected void BtnReact_Click(object sender, EventArgs e)
        {
            if (DdlSkill.SelectedValue != "-1")
            {
                if (DdlStatus.SelectedValue != "-1")
                {
                    if (TBPostName.Text != string.Empty && TBSalary.Text != string.Empty && TBQuali.Text != string.Empty && TBExpReq.Text != string.Empty)
                    {
                        GetDet();
                        objBll.StatementType = "Reactivate";
                        objBll.EditPost();
                        MessageBox.Show("Successfully Reactivated Post");
                        GetAvlPost();
                        Response.Redirect("EditPostDetails.aspx");

                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please fill out all the fields')", true);
                    }
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please select the Job Status')", true);
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please select the SkillType')", true);
            }
        }

        protected void DdlSkill_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void DdlStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
    }
}