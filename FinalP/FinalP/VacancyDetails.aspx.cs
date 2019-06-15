using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalP
{
    public partial class VacancyDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Calendar1.Visible = false;
                Calendar2.Visible = false;
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Calendar1.Visible==false)
            {
                Calendar1.Visible = true;
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

        protected void Btn1Submit_Click(Object sender, EventArgs e)
        {
            Response.Redirect("PostVacancy.aspx");
        }

        protected void Btn2Submit_Click(Object sender, EventArgs e)
        {
            Visible = false;
            Response.Redirect("DashBoard.aspx");
        }

    }
}