using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BusinessLayer;

namespace FinalP.Attendance
{
    public partial class Leave : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                MultiView1.ActiveViewIndex = 0;
                LoadDepartment();
                LoadEmployee();
                LoadDepartment0();
                LoadEmployee0();
                LoadDepartment1();
                LoadEmployee1();
            }
        }

        private void LoadEmployee()
        {
            objBll.DeptId = Convert.ToInt32(DdlDept.SelectedValue);
            DdlEmp.DataSource = objBll.GetEmp();
            DdlEmp.DataBind();
            ListItem liPost1 = new ListItem("Select Employee", "-1");
            DdlEmp.Items.Insert(0, liPost1);
        }

        private void LoadDepartment()
        {
            DdlDept.DataSource = objBll.GetJob("spGetDept", null);
            DdlDept.DataBind();
            ListItem liPost1 = new ListItem("Select Department", "-1");
            DdlDept.Items.Insert(0, liPost1);
            ListItem liPost2 = new ListItem("All", "0");
            DdlDept.Items.Insert(1, liPost2);
        }

        private void LoadEmployee0()
        {
            objBll.DeptId = Convert.ToInt32(DdlDept.SelectedValue);
            DdlEmp0.DataSource = objBll.GetEmp();
            DdlEmp0.DataBind();
            ListItem liPost1 = new ListItem("Select Employee", "-1");
            DdlEmp0.Items.Insert(0, liPost1);
        }

        private void LoadDepartment0()
        {
            DdlDept0.DataSource = objBll.GetJob("spGetDept", null);
            DdlDept0.DataBind();
            ListItem liPost1 = new ListItem("Select Department", "-1");
            DdlDept0.Items.Insert(0, liPost1);
            ListItem liPost2 = new ListItem("All", "0");
            DdlDept0.Items.Insert(1, liPost2);
        }

        private void LoadEmployee1()
        {
            objBll.DeptId = Convert.ToInt32(DdlDept.SelectedValue);
            DdlEmp1.DataSource = objBll.GetEmp();
            DdlEmp1.DataBind();
            ListItem liPost1 = new ListItem("Select Employee", "-1");
            DdlEmp1.Items.Insert(0, liPost1);
        }

        private void LoadDepartment1()
        {
            DdlDept1.DataSource = objBll.GetJob("spGetDept", null);
            DdlDept1.DataBind();
            ListItem liPost1 = new ListItem("Select Department", "-1");
            DdlDept1.Items.Insert(0, liPost1);
            ListItem liPost2 = new ListItem("All", "0");
            DdlDept1.Items.Insert(1, liPost2);
        }

        protected void BtnNleave_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void BtnAppLeave_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void BtnCncLeave_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void BtnSelect_Click(object sender, EventArgs e)
        {
            if (DdlDept.SelectedValue != "-1")
            {
                if (DdlEmp.SelectedValue != "-1")
                {
                    objBll.DeptId = Convert.ToInt32(DdlDept.SelectedValue);
                    objBll.EmpId = Convert.ToInt32(DdlEmp.SelectedValue);

                    GVNewLeave.DataSource = objBll.GetLeave("Pending");
                    GVNewLeave.DataBind();
                    LblNew.Text = GVNewLeave.Rows.Count.ToString();
                }
                else
                {
                    MessageBox.Show("Select Employee");
                }
            }
            else
            {
                MessageBox.Show("Select Department");
            }
        }

        protected void GVNewLeave_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "app")
            {
                objBll.UpdateLeave(Convert.ToInt32(e.CommandArgument.ToString()), "Approved");
            }
            else
            {
                objBll.UpdateLeave(Convert.ToInt32(e.CommandArgument.ToString()), "Rejected");
            }
            GVNewLeave.DataSource = objBll.GetLeave("Pending");
            GVNewLeave.DataBind();
            LblNew.Text = GVNewLeave.Rows.Count.ToString();
            MultiView1.ActiveViewIndex = 0;
        }

        protected void BtnSelect0_Click(object sender, EventArgs e)
        {
            if (DdlDept0.SelectedValue != "-1")
            {
                if (DdlEmp0.SelectedValue != "-1")
                {
                    objBll.DeptId = Convert.ToInt32(DdlDept0.SelectedValue);
                    objBll.EmpId = Convert.ToInt32(DdlEmp0.SelectedValue);

                    GVAppLeave.DataSource = objBll.GetLeave("Approved");
                    GVAppLeave.DataBind();
                    LblApp.Text = GVNewLeave.Rows.Count.ToString();
                }
                else
                {
                    MessageBox.Show("Select Employee");
                }
            }
            else
            {
                MessageBox.Show("Select Department");
            }
        }

        protected void GVAppLeave_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            objBll.DeleteLeave(Convert.ToInt32(e.CommandArgument.ToString()));
            GVAppLeave.DataSource = objBll.GetLeave("Approved");
            GVAppLeave.DataBind();
            LblApp.Text = GVAppLeave.Rows.Count.ToString();
        }

        protected void BtnSelect1_Click(object sender, EventArgs e)
        {
            if (DdlDept1.SelectedValue != "-1")
            {
                if (DdlEmp1.SelectedValue != "-1")
                {
                    objBll.DeptId = Convert.ToInt32(DdlDept1.SelectedValue);
                    objBll.EmpId = Convert.ToInt32(DdlEmp1.SelectedValue);

                    GVRejLeave.DataSource = objBll.GetLeave("Rejected");
                    GVRejLeave.DataBind();
                    LblRej.Text = GVNewLeave.Rows.Count.ToString();
                }
                else
                {
                    MessageBox.Show("Select Employee");
                }
            }
            else
            {
                MessageBox.Show("Select Department");
            }
        }

        protected void GVRejLeave_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            objBll.DeleteLeave(Convert.ToInt32(e.CommandArgument.ToString()));
            GVRejLeave.DataSource = objBll.GetLeave("Rejected");
            GVRejLeave.DataBind();
            LblRej.Text = GVRejLeave.Rows.Count.ToString();
        }

        protected void DdlDept_SelectedIndexChanged(object sender, EventArgs e)
        {
            objBll.DeptId = Convert.ToInt32(DdlDept.SelectedValue);
            LoadEmployee();
        }
    }
}