using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using System.IO;

namespace FinalP
{
    public partial class DivExportTest : System.Web.UI.Page
    {
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {                
                DataTable dt2 = objBll.UserDet(Convert.ToInt32(5));
                DataTable dt1 = objBll.UserEmp2(dt2.Rows[0]["Email"].ToString());
                Session["Eid"] = Convert.ToInt32(dt1.Rows[0]["EmpId"]);
                DataTable dt = objBll.GetEmpDet(Convert.ToInt32(Session["Eid"]));
                TbPost.Text = dt.Rows[0]["PostName"].ToString();
                TbPFN.Text = dt.Rows[0]["PFNo"].ToString();
                TbPan.Text = dt.Rows[0]["PAN"].ToString();
                TbMarSts.Text = dt.Rows[0]["MaritalStatus"].ToString();
                TbGender.Text = dt.Rows[0]["Gender"].ToString();
                TbEmail.Text = dt.Rows[0]["Email"].ToString();
                TbDept.Text = dt.Rows[0]["DepartmentName"].ToString();
                TbDeg.Text = dt.Rows[0]["Degree"].ToString();
                TbClass.Text = dt.Rows[0]["ClsName"].ToString();
                TbCitPer.Text = dt.Rows[0]["CITPer"].ToString();
                TbCit.Text = dt.Rows[0]["CITNo"].ToString();
                TbBnkNam.Text = dt.Rows[0]["BankName"].ToString();
                TbAdd.Text = dt.Rows[0]["Address"].ToString();
                TbAccNo.Text = dt.Rows[0]["BankAcN"].ToString();
               
            }
        }

        [Obsolete]
        protected void BtnPrint_Click(object sender, EventArgs e)
        {
            //Response.ContentType = "application/pdf";
            //Response.AddHeader("content-disposition", "attachment;filename=Panel.pdf");
            //Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //StringWriter stringWriter = new StringWriter();
            //HtmlTextWriter htmlTextWriter = new HtmlTextWriter(stringWriter);
            //MyDet.RenderControl(htmlTextWriter);
            //StringReader stringReader = new StringReader(stringWriter.ToString());
            //Document Doc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            //HTMLWorker htmlparser = new HTMLWorker(Doc);
            //PdfWriter.GetInstance(Doc, Response.OutputStream);
            //Doc.Open();
            //htmlparser.Parse(stringReader);
            //Doc.Close();
            //Response.Write(Doc);
            //Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control) { }
    }
}