using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BusinessLayer;

namespace FinalP.Attendance
{
    public partial class AssignHoliday : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();        
        private int yr = Convert.ToInt32(DateTime.Now.Year);
        private int mn = Convert.ToInt32(DateTime.Now.Month);        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //dt = objBll.GetHoliday(yr, mn, 0);
                //GVHolidayDetails.DataSource = dt;
                //GVHolidayDetails.DataBind();
                Calendar1.ShowNextPrevMonth = false;
            }
        }

        protected void BtnSelect_Click(object sender, EventArgs e)
        {
            if (DdlYear.SelectedItem.Text != "SELECT" )
            {
                if (DdlMonth.SelectedItem.Text != "SELECT")
                {
                    if(Convert.ToInt32(Calendar1.SelectedDate.Day) != 0)
                    {
                        if(TBDet.Text != string.Empty)
                        {
                            objBll.AddHoliday(yr, mn, Convert.ToInt32(Calendar1.SelectedDate.Day), TBDet.Text);
                            MessageBox.Show("Holiday Added");
                        }
                        else
                        {
                            MessageBox.Show("Enter the reason for holiday");
                        }
                    }
                    else
                    {
                        MessageBox.Show("Select Date");
                    }
                }
                else
                {
                    MessageBox.Show("Select Month");
                }
            }
            else
            {
                MessageBox.Show("Select Year");
            }
        }
            

            private bool IsHoliday(string s)
        {
            if (s == "True")
                return true;
            else
                return false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (!e.Day.IsOtherMonth)
            {
                DataTable dt2 = objBll.GetHoliday(yr, mn, Convert.ToInt32(e.Day.DayNumberText.ToString()));
                foreach (DataRow r in dt2.Rows)
                {

                    if (IsHoliday(dt2.Rows[0]["Status"].ToString()))
                    {
                        e.Cell.BackColor = Color.Red;
                        e.Cell.ToolTip = dt2.Rows[0]["Details"].ToString();
                    }
                    else
                    {

                        e.Cell.BackColor = Color.Gray;
                        e.Cell.ToolTip = "Working Day";
                    }
                }

            }
            else
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void DdlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DdlYear.SelectedItem.Text != "SELECT")
            {
                if (DdlMonth.SelectedItem.Text != "SELECT")
                {
                    String d = "1/" + DdlYear.SelectedValue.ToString() + "/" + DdlMonth.SelectedValue.ToString();
                    Calendar1.VisibleDate = Convert.ToDateTime(d);
                    yr = Convert.ToInt32(DdlYear.SelectedValue);
                    mn = DdlMonth.SelectedIndex;
                }
            }
        }

        protected void DdlYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DdlMonth.SelectedItem.Text != "SELECT")
            {
                if (DdlYear.SelectedItem.Text != "SELECT")
                {
                    String d = "1/" + DdlYear.SelectedValue.ToString() + "/" + DdlMonth.SelectedValue.ToString();
                    Calendar1.VisibleDate = Convert.ToDateTime(d);
                    yr = Convert.ToInt32(DdlYear.SelectedValue);
                    mn = DdlMonth.SelectedIndex;
                }
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            if (DdlMonth.SelectedItem.Text != "SELECT")
            {
                if (DdlYear.SelectedItem.Text != "SELECT")
                {
                    String d = "1/" + DdlYear.SelectedValue.ToString() + "/" + DdlMonth.SelectedValue.ToString();
                    Calendar1.VisibleDate = Convert.ToDateTime(d);
                    yr = Convert.ToInt32(DdlYear.SelectedValue);
                    mn = DdlMonth.SelectedIndex;
                }
            }            
        }
    }
}