using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using System.Windows.Forms;



namespace FinalP.JobPortal
{
    public partial class SignUp : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll() ;
        public string address=null;
        public static string state ;
        public static string district;
        public static string municipality ;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateStateDropDownList();                               
                BtnSignUp.Enabled = false;                
            }
        }

        private void PopulateStateDropDownList()
        {
            DdlState.DataSource = objBll.GetData("spGetState", null);
            DdlState.DataBind();

            ListItem liCState = new ListItem("Select State", "-1");
            DdlState.Items.Insert(0, liCState);

            ListItem liDistrict = new ListItem("Select District", "-1");
            DdlDistrict.Items.Insert(0, liDistrict);

            ListItem liMunicipality = new ListItem("Select Municipality", "-1");
            DdlMunicipality.Items.Insert(0, liMunicipality);

            DdlMunicipality.Enabled = false;
            DdlDistrict.Enabled = false;
        }

        //protected void BtnSignUp_Click(object sender, EventArgs e)
        //{
        //   // Response.Redirect("Login.aspx");
        //    address = municipality + "," + district + "," + state;
        //    MessageBox.Show(address);
        //}


        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            address = municipality + "," + district + "," + state;
            Boolean useravailable;
            useravailable = Checkusername(TBEmail.ToString());
            if (useravailable)
            {
                if (Password.ToString() == CPassword.ToString())
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HumanResource"].ToString());
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "insert into UserSignup(Fname,Lname,Email,Address,Phone,Gender,Password) values('" + FName.ToString() + "','" + LName.ToString() + "', '" + TBEmail.ToString() + "','" + address + "','" + Contact.ToString() + "','" + RadioButtonList1.SelectedValue + "','" + Password.ToString() + "')";



                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("Login.aspx?id=regidtor");
                    //   LblSucessMessage.Text = "New Registration Successfully Saved - Thanks For Registration";


                }
                else
                {
                    MessageBox.Show("Password Not Matched - ReEnter Password");
                }
            }
            else
            {
                MessageBox.Show("Email Already Exists");
            }

        }

        public Boolean Checkusername(String username)
        {
            Boolean userstatus;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HumanResource"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from UserSignup where Email='" + TBEmail.ToString() + "'";
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                userstatus = false;
            }
            else
            {
                userstatus = true;
            }
            con.Close();
            return userstatus;
        }

        protected void DdlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DdlState.SelectedValue == "-1")
            {
                DdlMunicipality.SelectedIndex = 0;
                DdlDistrict.SelectedIndex = 0;
                DdlMunicipality.Enabled = false;
                DdlDistrict.Enabled = false;
            }
            else
            {
                DdlDistrict.Enabled = true;

                SqlParameter parameter = new SqlParameter();
                parameter.ParameterName = "@StateId";
                parameter.Value = DdlState.SelectedValue;

                DdlDistrict.DataSource = objBll.GetData("spGetDistrict", parameter);
                DdlDistrict.DataBind();

                ListItem liDistrict = new ListItem("Select District", "-1");
                DdlDistrict.Items.Insert(0, liDistrict);

                DdlMunicipality.SelectedIndex = 0;
                DdlMunicipality.Enabled = false;
            }
            state = DdlState.SelectedItem.Text;
        }       

        protected void DdlDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DdlDistrict.SelectedValue == "-1")
            {
                DdlMunicipality.SelectedIndex = 0;
                DdlMunicipality.Enabled = false;
            }
            else
            {
                DdlMunicipality.Enabled = true;

                SqlParameter parameter = new SqlParameter();
                parameter.ParameterName = "@DistrictId";
                parameter.Value = DdlDistrict.SelectedValue;

                DdlMunicipality.DataSource = objBll.GetData("spGetMunicipality", parameter);
                DdlMunicipality.DataBind();
                ListItem liMunicipality = new ListItem("Select Municipality", "-1");
                DdlMunicipality.Items.Insert(0, liMunicipality);
            }
            district = DdlDistrict.SelectedItem.ToString();
        }

        protected void DdlMunicipality_SelectedIndexChanged(object sender, EventArgs e)
        {
            municipality = DdlMunicipality.SelectedItem.ToString();
        }

        protected void ChkBox_CheckedChanged(object sender, EventArgs e)
        {
            if (ChkBox.Checked == true)
            {
                BtnSignUp.Enabled = true;
            }
            else
            {
                BtnSignUp.Enabled = false;
            }

        }
    }
}