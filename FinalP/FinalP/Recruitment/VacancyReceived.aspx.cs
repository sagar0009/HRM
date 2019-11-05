using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using System.Windows.Forms;
using iTextSharp.text;
using iTextSharp.text.xml;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;

namespace FinalP
{
    public partial class VacancyReceived : System.Web.UI.Page
    {
       ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetVacRecDetails();
            }
        }

        private void GetVacRecDetails()
        {
            GVAppRec.DataSource = null;
            GVAppRec.DataSource = objBll.GetRecAppDet();
            GVAppRec.DataBind();

        }       

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void BtnDone_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gv in GVAppRec.Rows)
            {
                objBll.ReceivalId = Convert.ToInt32((gv.FindControl("LblRecId") as System.Web.UI.WebControls.Label).Text);
                //objBll.ApplicantId = Convert.ToInt32((gv.FindControl("LblApId") as System.Web.UI.WebControls.Label).Text);
                //objBll.Fname = (gv.FindControl("LblFname") as System.Web.UI.WebControls.Label).Text;
                //objBll.Lname = (gv.FindControl("LblLname") as System.Web.UI.WebControls.Label).Text;
                //objBll.PostId = Convert.ToInt32((gv.FindControl("LblPsId") as System.Web.UI.WebControls.Label).Text);
                System.Web.UI.WebControls.CheckBox cb = gv.FindControl("CkSts") as System.Web.UI.WebControls.CheckBox;
                if (cb.Checked)
                {
                    objBll.IsShortListed = true;
                }
                else
                {
                    objBll.IsShortListed = false;
                }

                //objBll.Status = Convert.ToBoolean(gv.FindControl("CkSts") as CheckBox);                
                objBll.InsertAppRec();
            }

            Response.Redirect("ShortList.aspx");
        }

        //protected void BtnExport_Click(object sender, EventArgs e)
        //{
        //    PdfPTable pdfTable = new PdfPTable(GVAppRec.HeaderRow.Cells.Count);
        //    foreach (TableCell headerCell in GVAppRec.HeaderRow.Cells)
        //    {
        //        Font f = new Font();
        //        f.Color = new BaseColor(GVAppRec.HeaderStyle.ForeColor);

        //        PdfPCell pdfdCell = new PdfPCell(new Phrase(headerCell.Text, f));
        //        pdfdCell.BackgroundColor = new BaseColor(GVAppRec.HeaderStyle.BackColor);
        //        pdfTable.AddCell(pdfdCell);
        //    }

        //    foreach (GridViewRow gvr in GVAppRec.Rows)
        //    {
        //        foreach (TableCell tc in gvr.Cells)
        //        {
        //            Font f = new Font();
        //            f.Color = new BaseColor(GVAppRec.RowStyle.ForeColor);
        //            PdfPCell pdfdCell = new PdfPCell(new Phrase(tc.Text));
        //            pdfdCell.BackgroundColor = new BaseColor(GVAppRec.RowStyle.BackColor);
        //            pdfTable.AddCell(pdfdCell);
        //        }
        //    }

        //    Document doc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
        //    PdfWriter.GetInstance(doc, Response.OutputStream);

        //    doc.Open();
        //    doc.Add(pdfTable);
        //    doc.Close();

        //    Response.ContentType = "application/pdf";
        //    Response.AppendHeader("Content-Disposition", "attachment;filename=VacancyReceived.pdf");
        //    Response.Write(doc);
        //    Response.Flush();
        //    Response.End();
        //}

        protected void CkSts_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void DDSearch_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            if(TBSearch.Text!=string.Empty)
            {
                if(DDSearch.SelectedValue!="-1")
                {  
                    objBll.Key = TBSearch.Text;
                    objBll.Index = DDSearch.SelectedItem.Text;
                    GVAppRec.DataSource = null;
                    GVAppRec.DataSource = objBll.SearchResult();
                    GVAppRec.DataBind();
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

        protected void GVAppRec_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           DataTable dt= objBll.GetCvUrl(Convert.ToInt32(e.CommandArgument.ToString())) ;
            Response.Write("<script>window.open('"+ dt.Rows[0]["Path"].ToString() + "');</script>");
            //Response.Redirect(dt.Rows[0]["Path"].ToString());
        }
    }
}