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
            else
            {
                LblWarning.Visible = false;
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

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            address = municipality + "," + district + "," + state;
            bool useravailable;
            useravailable = Checkusername(Request["Email"]);
            if (Request["Fname"] != null && Request["Lname"] != null && Request.Form["Email"] != null && Request["Phone"] != null && RadioButtonList1.SelectedIndex != -1 && Request["Password"] != null && DdlDistrict.SelectedIndex!=0&& DdlState.SelectedIndex != 0 && DdlMunicipality.SelectedIndex != 0 )
            {
                if (useravailable)
                {
                    if (Request["Password"] == Request["CPassword"])
                    {
                        string query = "insert into UserSignup(Fname,Lname,Email,Address,Phone,Gender,Password) values('" + Request["Fname"] + "','" + Request["Lname"] + "', '" + Request.Form["Email"] + "','" + address + "','" + Request["Phone"] + "','" + RadioButtonList1.SelectedValue + "','" + Request["Password"] + "')";
                        objBll.AddUser(query);
                        MessageBox.Show("New Registration Successfully Saved - Thanks For Registration" + "\nWelcome " + Request["Fname"]);
                        Response.Redirect("Login.aspx?id=regidtor");
                        
                    }
                    else
                    {
                        MessageBox.Show("Password Not Matched - Re-Enter Password");
                    }
                }
                else
                {
                    MessageBox.Show("Email Already Exists");
                }
            }
            else
            {
                LblWarning.Visible = true;
                LblWarning.Text = "please fill out the form properly\nAll field are compulsory";
            }

        }
        

    public bool Checkusername(String username)
    {
            bool userstatus=true;                      
            string query = "Select * from UserSignup where Email='" + Request["Email"] + "'";
            userstatus=objBll.CheckEmail(query, userstatus);
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