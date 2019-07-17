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

        protected void BtnBack_Click(object sender, EventArgs e)
        {          
            Response.Redirect("DashBoard.aspx");
        }

        protected void BtnDone_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gv in GVStatus.Rows)
            {
                objBll.ReceivalId = Convert.ToInt32((gv.FindControl("LblRecId") as System.Web.UI.WebControls.Label).Text);
                objBll.ApplicantId = Convert.ToInt32((gv.FindControl("LblApId") as System.Web.UI.WebControls.Label).Text);
                objBll.Fname = (gv.FindControl("LblFname") as System.Web.UI.WebControls.Label).Text;
                objBll.Lname = (gv.FindControl("LblLname") as System.Web.UI.WebControls.Label).Text;
                objBll.PostId = Convert.ToInt32((gv.FindControl("LblPsId") as System.Web.UI.WebControls.Label).Text);
                System.Web.UI.WebControls.CheckBox cb = gv.FindControl("CkSts") as System.Web.UI.WebControls.CheckBox;
                if (cb.Checked)
                {
                    objBll.Status = true;
                }
                else
                {
                    objBll.Status = false;
                }
                objBll.InsertStatus();
            }
            MessageBox.Show("A new Employee has been added");
            Response.Redirect("DashBoard.aspx");
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
    }
}