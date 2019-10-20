using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BusinessLayer;


namespace FinalP
{
    public partial class PostVacancy : System.Web.UI.Page
    {
        ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlParameter parameter = new SqlParameter
            {
                ParameterName = "@VacancyId",
                Value = Convert.ToInt32(Session["VacancyNumber"])
            };
            DataSet ds = objBll.GetJob("spGetJobByVacancy", parameter);
            TBPost.Text = Convert.ToString(ds.Tables[0].Rows[0]["PostName"]);
            TBPostVac.Text = Convert.ToString(ds.Tables[0].Rows[0]["Number"]);
            TBExpReq.Text = Convert.ToString(ds.Tables[0].Rows[0]["ExperienceRequired"]) + " Years";
            TBQuali.Text = Convert.ToString(ds.Tables[0].Rows[0]["AcademicQualification"]);
            TBSkill.Text = Convert.ToString(ds.Tables[0].Rows[0]["SkillType"]);
            TbJobType.Text = Convert.ToString(ds.Tables[0].Rows[0]["JobType"]);
            if(Session["sts"].ToString()=="Expired")
            {
                BtnApply.Visible = false;
            }
        }

        protected void BtnApply_Click(Object sender, EventArgs e)
        {
            
            if(Session["UserEmail"]!=null)
            {
                MessageBoxButtons mbtn = MessageBoxButtons.YesNo;
                DialogResult res = MessageBox.Show("Do you want to submit the form?", "Submit form", mbtn);
                if (res == DialogResult.Yes)
                {
                    SqlParameter parameter = new SqlParameter
                    {
                        ParameterName = "@VacancyId",
                        Value = Convert.ToInt32(Session["VacancyNumber"])
                    };
                    DataSet ds = objBll.GetJob("spGetJobByVacancy", parameter);
                    objBll.PostId = Convert.ToInt32(ds.Tables[0].Rows[0]["PostId"]);
                    objBll.ApplicantId = Convert.ToInt32( Session["UserId"]);
                    objBll.VacancyId = Convert.ToInt32(ds.Tables[0].Rows[0]["VacancyId"]);            
                    objBll.ReceivedDate=DateTime.Today;
                    objBll.VacRecDetails();
                    Response.Write("<script>");
                    Response.Write("window.open('Confirmation.aspx','_blank')");
                    Response.Write("</script>");                    
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void BtnPrint_Click(object sender, EventArgs e)
        {

        }
    }
}