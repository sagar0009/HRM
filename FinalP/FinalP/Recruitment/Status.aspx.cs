using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BusinessLayer;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Data;
using System.IO;

namespace FinalP
{
    public partial class Status : System.Web.UI.Page
    {
        ClsBll objBll = new ClsBll();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetStat();
            }
        }

        public void GetStat()
        {
            GVStatus.DataSource = null;
            GVStatus.DataSource = objBll.GetStatus();
            GVStatus.DataBind();
        }

        protected void BtnDone_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gv in GVStatus.Rows)
            {
                objBll.ReceivalId = Convert.ToInt32((gv.FindControl("LblRecId") as System.Web.UI.WebControls.Label).Text);
                System.Web.UI.WebControls.CheckBox cb = gv.FindControl("CkSts") as System.Web.UI.WebControls.CheckBox;
                if (cb.Checked)
                {
                    try
                    {
                        objBll.IsEmployee = true;
                        int aid = Convert.ToInt32((gv.FindControl("LblApId") as System.Web.UI.WebControls.Label).Text);
                        DataTable dy = objBll.AppUserDet(aid);
                        objBll.InsertEmp(aid,dy.Rows[0]["FName"].ToString(), dy.Rows[0]["LName"].ToString(), dy.Rows[0]["Address"].ToString(), dy.Rows[0]["Email"].ToString(), dy.Rows[0]["Gender"].ToString(), dy.Rows[0]["Phone"].ToString(), dy.Rows[0]["Password"].ToString(), Convert.ToInt32(dy.Rows[0]["DeptId"]), Convert.ToInt32(dy.Rows[0]["PostId"]), Convert.ToInt32(dy.Rows[0]["ClsId"]));
                        Random gen = new Random();
                        int code = gen.Next(000000, 999999);
                        SendRegistrationAlert(dy.Rows[0]["Fname"].ToString(), dy.Rows[0]["PostName"].ToString(), Convert.ToDateTime(dy.Rows[0]["ReceivedDate"]).ToShortDateString(), dy.Rows[0]["Email"].ToString(), code);
                        objBll.InsertActivation(aid, code,Convert.ToInt32(dy.Rows[0]["VacancyId"]));
                    }
                    catch(Exception ex)
                    {
                        MessageBox.Show("Employee Already Added" );
                    }
                }
                else
                {
                    objBll.IsEmployee = false;
                }
                objBll.InsertStatus();
                //function to insert into employee table

            }
            MessageBox.Show(" new Employee added");
            Response.Redirect("~/DashBoard.aspx");
        }

        private void SendRegistrationAlert(string UserName, string PostName,string RecDate,string Email,int code)
        {
            string body = PopulateMailBody(UserName, PostName,RecDate,code);
            EmailEngine.SendMail(Email, "Welcome to ABC HRMS.", body);
        }

        private string PopulateMailBody(string UserName, string PostName,string RecDate,int code)
        {
            string body = String.Empty;

            using (StreamReader reader = new StreamReader(Server.MapPath("~/ActivationTemplate.html")))
            {
                body = reader.ReadToEnd();
            }
            body = body.Replace("[userName]", UserName);
            body = body.Replace("[post]", PostName);
            body = body.Replace("[ReceivalDate]", RecDate);
            body = body.Replace("[Code]", code.ToString());            
            return body;
        }

        protected void CkSts_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void BtnExport_Click(object sender, EventArgs e)
        {
            PdfPTable pdfTable = new PdfPTable(GVStatus.HeaderRow.Cells.Count);
            foreach (TableCell headerCell in GVStatus.HeaderRow.Cells)
            {
                Font f = new Font();
                f.Color = new BaseColor(GVStatus.HeaderStyle.ForeColor);

                PdfPCell pdfdCell = new PdfPCell(new Phrase(headerCell.Text, f));
                pdfdCell.BackgroundColor = new BaseColor(GVStatus.HeaderStyle.BackColor);
                pdfTable.AddCell(pdfdCell);
            }

            foreach (GridViewRow gvr in GVStatus.Rows)
            {
                foreach (TableCell tc in gvr.Cells)
                {
                    Font f = new Font();
                    f.Color = new BaseColor(GVStatus.RowStyle.ForeColor);
                    PdfPCell pdfdCell = new PdfPCell(new Phrase(tc.Text));
                    pdfdCell.BackgroundColor = new BaseColor(GVStatus.RowStyle.BackColor);
                    pdfTable.AddCell(pdfdCell);
                }
            }

            Document doc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
            PdfWriter.GetInstance(doc, Response.OutputStream);

            doc.Open();
            doc.Add(pdfTable);
            doc.Close();

            Response.ContentType = "application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment;filename=Status.pdf");
            Response.Write(doc);
            Response.Flush();
            Response.End();
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            if (TBSearch.Text != string.Empty)
            {
                if (DDSearch.SelectedValue != "-1")
                {


                    objBll.Key = TBSearch.Text;
                    objBll.Index = DDSearch.SelectedItem.Text;
                    GVStatus.DataSource = null;
                    GVStatus.DataSource = objBll.SearchResult();
                    GVStatus.DataBind();
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please select filter value')", true);
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Searching parameter is empty')", true);
            }
        }

        protected void DDSearch_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}