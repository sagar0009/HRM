using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
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
                    UploadCv();
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

        protected void BtnView_Click(object sender, EventArgs e)
        {

        }

        private void UploadCv()
        {
            Label1.Visible = true;

            string filePath = FileUpload1.PostedFile.FileName;          // getting the file path of uploaded file
            string filename1 = Path.GetFileName(filePath);               // getting the file name of uploaded file
            string ext = Path.GetExtension(filename1);                      // getting the file extension of uploaded file
            string type = String.Empty;
            if (!FileUpload1.HasFile)
            {
                Label1.Text = "Please Select File";                          //if file uploader has no file selected
            }
            else if (FileUpload1.HasFile)
            {
                try
                {
                    switch (ext)                                         // this switch code validate the files which allow to upload only PDF  file 
                    {

                        case ".doc":

                            type = "application/word";

                            break;

                        case ".docx":

                            type = "application/word";

                            break;
                    }
                    if (type != String.Empty)

                    {
                        string Path = Server.MapPath("../Resumes/" + FileUpload1.FileName.ToString());
                        FileUpload1.SaveAs(Path);
                        objBll.Path = Path;
                        objBll.EmpId = Convert.ToInt32(Session["UserId"]);
                        objBll.InsertCV();
                        Label1.ForeColor = System.Drawing.Color.Green;
                        Label1.Text = " CV Uploaded Successfully";
                    }

                    else

                    {

                        Label1.ForeColor = System.Drawing.Color.Red;

                        Label1.Text = "Select Only word Files  ";
                        // if file is other than speified extension 

                    }

                }

                catch (Exception ex)

                {

                    Label1.Text = "Error: " + ex.Message.ToString();

                }

            }
        }        
    }
}