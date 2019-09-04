using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using iTextSharp.text.pdf;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;


namespace FinalP
{
    

    public partial class WebForm1 : System.Web.UI.Page
    {
        ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetShortList();
            }
        }

        private void GetShortList()
        {
            GVShortList.DataSource = null;
            GVShortList.DataSource = objBll.GetShortListed();
            GVShortList.DataBind();

        }

        protected void BtnBack_Click1(object sender, EventArgs e)
        {
            Response.Redirect("DashBoard.aspx");
        }

        protected void BtnDone_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gv in GVShortList.Rows)
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
                objBll.InsertShortList();
            }
            Response.Redirect("WrittenTest.aspx");
        }

        protected void CkSts_CheckedChanged(object sender, EventArgs e)
        {

        }

        //protected void BtnExport_Click(object sender, EventArgs e)
        //{          
        //    PdfPTable pdfTable = new PdfPTable(GVShortList.HeaderRow.Cells.Count);
        //    foreach (TableCell headerCell in GVShortList.HeaderRow.Cells)
        //    {
        //        Font f = new Font();
        //        f.Color = new BaseColor(GVShortList.HeaderStyle.ForeColor);

        //        PdfPCell pdfdCell = new PdfPCell(new Phrase(headerCell.Text, f));
        //        pdfdCell.BackgroundColor = new BaseColor(GVShortList.HeaderStyle.BackColor);
        //        pdfTable.AddCell(pdfdCell);
        //    }

        //    foreach (GridViewRow gvr in GVShortList.Rows)
        //    {
        //        foreach (TableCell tc in gvr.Cells)
        //        {
        //            Font f = new Font();
        //            f.Color = new BaseColor(GVShortList.RowStyle.ForeColor);
        //            PdfPCell pdfdCell = new PdfPCell(new Phrase(tc.Text));
        //            pdfdCell.BackgroundColor = new BaseColor(GVShortList.RowStyle.BackColor);
        //            pdfTable.AddCell(pdfdCell);
        //        }
        //    }

        //    Document doc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
        //    PdfWriter.GetInstance(doc, Response.OutputStream);

        //    doc.Open();
        //    doc.Add(pdfTable);
        //    doc.Close();

        //    Response.ContentType = "application/pdf";
        //    Response.AppendHeader("Content-disposition", "attachment;filename=ShortListed.pdf");
        //    Response.Write(doc);
        //    Response.Flush();
        //    Response.End();
        //}

        protected void CkSts_CheckedChanged1(object sender, EventArgs e)
        {
            foreach (GridViewRow gv in GVShortList.Rows)
            {
                System.Web.UI.WebControls.CheckBox cb = gv.FindControl("CkSts") as System.Web.UI.WebControls.CheckBox;
                if (cb.Checked)
                {
                    cb.Enabled = false;
                }
            }
        }
    }
}