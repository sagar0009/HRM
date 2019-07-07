using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace FinalP
{
    public partial class Confirmation : System.Web.UI.Page
    {
        ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = Session["UserEmail"].ToString();
           

            SqlParameter parameter = new SqlParameter
            {
                ParameterName = "@VacancyId",
                Value = Convert.ToInt32(Session["VacancyNumber"].ToString())
            };
            DataSet ds = new DataSet();
            ds = objBll.GetJob("spGetJobByVacancy", parameter);
            Label1.Text = Convert.ToString(ds.Tables[0].Rows[0][1]);
           
        }
    }
}