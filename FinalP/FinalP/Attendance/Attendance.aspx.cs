using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
using System.Windows.Forms;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Data.Common;
using ClosedXML.Excel;
using BusinessLayer;

namespace FinalP.Attendance
{    
    public partial class Attendance1 : System.Web.UI.Page
    {        
        public ClsBll objBll = new ClsBll();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private static DataTable pdt;
        public static string path;
        //private void BindGridview()
        //{

        //    GridView1.DataSource = null;
        //    GridView1.DataSource = objBll.GetAllEmp();
        //    GridView1.DataBind();
        //}

        //private void BindGridview()
        //{
        //    string CS = ConfigurationManager.ConnectionStrings["tsts"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(CS))
        //    {
        //        SqlCommand cmd = new SqlCommand("spGetAllEmployee", con);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        con.Open();
        //        GridView1.DataSource = cmd.ExecuteReader();
        //        GridView1.DataBind();
        //    }
        //}

        protected void BtnImport_Click(object sender, EventArgs e)
        {

            //string connectionString = "";
            //if (FileUpload1.HasFile)
            //{
            //    string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            //    string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName);
            //    string fileLocation = Server.MapPath("~/UploadFile/" + fileName);
            //    FileUpload1.SaveAs(fileLocation);
            //    if (fileExtension == ".xls")
            //    {
            //        connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
            //          fileLocation + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
            //    }
            //    else if (fileExtension == ".xlsx")
            //    {
            //        connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" +
            //          fileLocation + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
            //    }
            //    OleDbConnection con = new OleDbConnection(connectionString);
            //    OleDbCommand cmd = new OleDbCommand();
            //    cmd.CommandType = System.Data.CommandType.Text;
            //    cmd.Connection = con;
            //    OleDbDataAdapter dAdapter = new OleDbDataAdapter(cmd);
            //    DataTable dtExcelRecords = new DataTable();
            //    con.Open();
            //    DataTable dtExcelSheetName = con.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
            //    string getExcelSheetName = dtExcelSheetName.Rows[0]["Table_Name"].ToString();
            //    cmd.CommandText = "SELECT * FROM [" + getExcelSheetName + "]";
            //    dAdapter.SelectCommand = cmd;
            //    dAdapter.Fill(dtExcelRecords);
            //    grvExcelData.DataSource = dtExcelRecords;
            //    grvExcelData.DataBind();
            //}
        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            //if (FileUpload1.PostedFile != null)
            //{
            //    try
            //    {
            //        string path = string.Concat(Server.MapPath("~/UploadFile/" + FileUpload1.FileName));
            //        FileUpload1.SaveAs(path);
            //        // Connection String to Excel Workbook  
            //        string excelCS = string.Format("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=Excel 8.0", path);
            //        using (OleDbConnection con = new OleDbConnection(excelCS))
            //        {
            //            OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$]", con);
            //            con.Open();
            //            // Create DbDataReader to Data Worksheet  
            //            DbDataReader dr = cmd.ExecuteReader();
            //            // SQL Server Connection String  
            //            string CS = ConfigurationManager.ConnectionStrings["tsts"].ConnectionString;
            //            // Bulk Copy to SQL Server   
            //            SqlBulkCopy bulkInsert = new SqlBulkCopy(CS);
            //            bulkInsert.DestinationTableName = "Employee";
            //            bulkInsert.WriteToServer(dr);
            //            BindGridview();
            //            MessageBox.Show("Your file uploaded successfully");
            //        }
            //    }
            //    catch (Exception)
            //    {
            //        MessageBox.Show("Your file not uploaded");
            //    }
            //}


            using (IXLWorkbook wb = new XLWorkbook(FileUpload1.PostedFile.InputStream))
            {
                IXLWorksheet ws = wb.Worksheet(1);
                DataTable dt = new DataTable();
                bool firstRow = true;
                foreach (IXLRow row in ws.Rows())
                {
                    if (firstRow)
                    {
                        foreach (IXLCell cell in row.Cells())
                        {
                            dt.Columns.Add(cell.Value.ToString());
                        }
                        firstRow = false;
                    }
                    else
                    {
                        dt.Rows.Add();
                        int i = 0;
                        foreach (IXLCell cell in row.Cells())
                        {
                            dt.Rows[dt.Rows.Count - 1][i] = cell.Value.ToString();
                            i++;
                        }
                    }

                    // BindGridview();
                }
                GridView1.DataSource = null;
                GridView1.DataSource = dt;
                pdt = dt;
                
                GridView1.DataBind();
            }


        }

        private bool CheckUnique()
        {
            bool flag=false;
            DataTable dt1 = objBll.GetEmpAttPart();
            DataTable dt2 = pdt;
            foreach(DataRow r1 in dt1.Rows)
            {
                if (!flag)
                {
                    foreach (DataRow r2 in dt2.Rows)
                    {
                        if (r1["EmpId"].ToString() == r2["EmpId"].ToString() && r1["Date"].ToString() == r2["Date"].ToString())
                        {
                            flag = true;
                            break;
                        }
                    }                    
                }
                break;
            }
            return flag; 
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count > 0)
            {
                try
                {
                    bool flag = CheckUnique();
                    if (flag)
                    {
                        MessageBox.Show("Duplicate date detected\ncheck data to be inserted");
                    }
                    else
                    {
                        string query = "";
                        DataTable dt = pdt;
                        foreach (DataRow dr in dt.Rows)
                        {
                            query += "insert into Attendance values( '"
                                + dr["EmpId"] + "','"
                                + dr["DeptId"] + "','"
                                + dr["CheckIn"] + "','"
                                + dr["CheckOut"] + "','"
                                + dr["Date"] + "','"
                                + dr["Status"].ToString() + "');";

                        }
                        objBll.AddAttEmp(query);
                        MessageBox.Show("Your file  uploaded");
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
               
        }


    }

}
