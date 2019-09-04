using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
namespace FinalP
{
    public partial class Interview : System.Web.UI.Page
    {
        ClsBll objBll = new ClsBll();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetInt();
            }
        }

        public void GetInt()
        {
            GVInterview.DataSource = null;
            GVInterview.DataSource = objBll.GetInterviewed();
            GVInterview.DataBind();
        }


        protected void BtnBack_Click(object sender, EventArgs e)
        {           
            Response.Redirect("DashBoard.aspx");
        }

        protected void BtnDone_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gv in GVInterview.Rows)
            {
                objBll.ReceivalId = Convert.ToInt32((gv.FindControl("LblRecId") as System.Web.UI.WebControls.Label).Text);
                CheckBox cb = gv.FindControl("CkSts") as CheckBox;
                if (cb.Checked)
                {
                    objBll.IsInterviewPss = true;
                }
                else
                {
                    objBll.IsInterviewPss = false;
                }
                objBll.InsertInterview();
            }
            Response.Redirect("Status.aspx");
        }

        protected void CkSts_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void BtnExport_Click(object sender, EventArgs e)
        {
            PdfPTable pdfTable = new PdfPTable(GVInterview.HeaderRow.Cells.Count);
            foreach (TableCell headerCell in GVInterview.HeaderRow.Cells)
            {
                Font f = new Font();
                f.Color = new BaseColor(GVInterview.HeaderStyle.ForeColor);

                PdfPCell pdfdCell = new PdfPCell(new Phrase(headerCell.Text, f));
                pdfdCell.BackgroundColor = new BaseColor(GVInterview.HeaderStyle.BackColor);
                pdfTable.AddCell(pdfdCell);
            }

            foreach (GridViewRow gvr in GVInterview.Rows)
            {
                foreach (TableCell tc in gvr.Cells)
                {
                    Font f = new Font();
                    f.Color = new BaseColor(GVInterview.RowStyle.ForeColor);
                    PdfPCell pdfdCell = new PdfPCell(new Phrase(tc.Text));
                    pdfdCell.BackgroundColor = new BaseColor(GVInterview.RowStyle.BackColor);
                    pdfTable.AddCell(pdfdCell);
                }
            }

            Document doc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
            PdfWriter.GetInstance(doc, Response.OutputStream);

            doc.Open();
            doc.Add(pdfTable);
            doc.Close();

            Response.ContentType = "application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment;filename=ShortListed.pdf");
            Response.Write(doc);
            Response.Flush();
            Response.End();
        }
    }
}