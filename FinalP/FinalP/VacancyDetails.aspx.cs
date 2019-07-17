using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using System.Data;
using System.Windows.Forms;

namespace FinalP
{
    public partial class VacancyDetails : System.Web.UI.Page
    {

        ClsBll objBll = new ClsBll();       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                Calendar2.Visible = false;
                PopulatePost();
            }
        }

        private void PopulatePost()
        {
            DDPost.DataSource = objBll.GetJob("spGetPost", null);
            DDPost.DataBind();

            ListItem liPost = new ListItem("Select Post", "-1");
            DDPost.Items.Insert(0, liPost);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible == false)
            {
                Calendar1.Visible = true;
                Calendar2.Visible = false;
            }
            else
            {
                Calendar1.Visible = false;
            }
        }

        protected void Selection_Change(Object sender, EventArgs e)
        {
            TBOpenDate.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible == false)
            {
                Calendar2.Visible = true;
                Calendar1.Visible = false;
            }
            else
            {
                Calendar2.Visible = false;
            }
        }

        protected void Selection1_Change(Object sender, EventArgs e)
        {
            TBEndDate.Text = Calendar2.SelectedDate.ToShortDateString();
        }
       
        protected void DDPost_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDPost.SelectedValue != "-1")
            {
                SqlParameter parameter = new SqlParameter();
                parameter.ParameterName = "@PostId";
                parameter.Value = DDPost.SelectedValue;
                DataSet ds = new DataSet();
                ds = objBll.GetJob("spGetVacancyDetails", parameter);
                LblSkills.Text = Convert.ToString(ds.Tables[0].Rows[0][8]);
                LblExperience.Text = Convert.ToString(ds.Tables[0].Rows[0][4]) + " years";
                LblQual.Text = Convert.ToString(ds.Tables[0].Rows[0][5]);
                LblSalary.Text ="Rs. "+ Convert.ToString(ds.Tables[0].Rows[0][2]);
            }

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            if (DDPost.SelectedValue != "-1")
            {
                if (DdlJobType.SelectedValue != "-1")
                {
                    if (TBEndDate.Text != string.Empty && TBOpenDate.Text != string.Empty && TBNoVacancy.Text != string.Empty )
                    {
                        DateTime startDate = Convert.ToDateTime(TBOpenDate.Text.Trim());
                        DateTime endDate = Convert.ToDateTime(TBEndDate.Text.Trim());
                        if (startDate < endDate)
                        {
                            objBll.PostId = Convert.ToInt32(DDPost.SelectedValue);
                            objBll.OpenDate = Convert.ToDateTime(TBOpenDate.Text);
                            objBll.CloseDate = Convert.ToDateTime(TBEndDate.Text);
                            objBll.Number = Convert.ToInt32(TBNoVacancy.Text);
                            objBll.JobType = DdlJobType.SelectedItem.Text;
                            objBll.AddVacancy();
                            
                            objBll.AddJobDetails();
                            MessageBox.Show("Successfully posted");
                            Response.Write("<script>");
                            Response.Write("window.open('JobPortal/Home.aspx','_blank')");
                            Response.Write("</script>");
                        }
                        else
                        {
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('End date should be greater than Start date')", true);
                        }

                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please fill out all the fields')", true);
                    }
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please select the Job-Type')", true);
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please select the post')", true);                
            }
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("DashBoard.aspx");
        }

        protected void DdlJobType_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}