using DataLayer;
using System;
using System.Data;
using System.Data.SqlClient;

namespace BusinessLayer
{
    public class ClsBll
    {
        public ClsDll objDll = new ClsDll();
        public DateTime OpenDate, CloseDate,ReceivedDate;
        public int PostId,SkillId, Number,VacancyId,ApplicantId,ReceivalId,Salary, ExpReq;
        public string JobType,JobDescription,ApplicantName,ApplicantEmail,Fname,Lname,SkillType,Key,Index;
        public string AcaQua, PostName, StatementType;
        public bool Status, IsShortListed,IsWrTestCall, IsWrTestPass, IsInterviewPss,IsEmployee;

        public DataSet GetJob(string SPName, SqlParameter SPParameter)
        {
            return objDll.GetDataFromSP(SPName,SPParameter);

        }

        public void AddUser(string query)
        {                        
            objDll.InsertUserDetails(query);
        }
       
        public bool CheckEmail(string query, bool us)
        {
            return objDll.CheckUserEmail(query, us);
        }

        public string ValidatePw(string query,string pw)
        {
            return objDll.ValidatePassword(query, pw);
        }

        //search the applications
        public DataTable SearchResult()
        {
            SqlParameter[] pam = new SqlParameter[2];
            pam[0] = ClsDll.AddParameter("@Key", Key, SqlDbType.VarChar, 100);
            pam[1] = ClsDll.AddParameter("@Index", Index, SqlDbType.VarChar, 100);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetSearchData", pam);
            return dt;
        }

        public void JobByVId()
        {
            SqlParameter[] pam = new SqlParameter[1];
            pam[0] = ClsDll.AddParameter("@VacancyId", VacancyId, SqlDbType.Int, 100);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetJobByVacancy", pam);
        }

        public DataTable JobDet()
        {
            SqlParameter[] pam = new SqlParameter[1];
            pam[0] = ClsDll.AddParameter("@VacancyId", VacancyId, SqlDbType.Int, 100);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetJobByVacancy", pam);
            return dt;
        }

        public int GetUserByEmail()
        {
            SqlParameter[] pam = new SqlParameter[1];
            pam[0] = ClsDll.AddParameter("@ApplicantEmail", ApplicantEmail, SqlDbType.VarChar, 100);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetUserByEmail", pam);
            int str = Convert.ToInt32(dt.Rows[0][0]);
            return str;
        }

        public void AddVacancy()
        {
            SqlParameter[] pam = new SqlParameter[5];
            pam[0] = ClsDll.AddParameter("@PostId", PostId, SqlDbType.Int, 100);
            pam[1] = ClsDll.AddParameter("@OpenDate", OpenDate, SqlDbType.Date, 100);
            pam[2] = ClsDll.AddParameter("@CloseDate", CloseDate, SqlDbType.Date, 100);
            pam[3] = ClsDll.AddParameter("@Number", Number, SqlDbType.Int, 100);
            pam[4] = ClsDll.AddParameter("@JobType", JobType, SqlDbType.VarChar, 50);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spInsertVacancy", pam);
        }

        public void EditPost()
        {
            SqlParameter[] pam = new SqlParameter[7];
            pam[0] = ClsDll.AddParameter("@PostName", PostName, SqlDbType.VarChar, 100);
            pam[1] = ClsDll.AddParameter("@Salary", Salary, SqlDbType.Int, 100);
            pam[2] = ClsDll.AddParameter("@SkillId", SkillId, SqlDbType.Int, 100);
            pam[3] = ClsDll.AddParameter("@AcademicQualification", AcaQua, SqlDbType.VarChar, 100);
            pam[4] = ClsDll.AddParameter("@ExperienceRequired", ExpReq, SqlDbType.Int, 50);
            pam[5] = ClsDll.AddParameter("@Status", Status, SqlDbType.Bit, 100);
            pam[6] = ClsDll.AddParameter("@StatementType", StatementType, SqlDbType.VarChar, 100);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spEditPost", pam);
        }       

        public void AddJobDetails()
        {
            SqlParameter[] pam = new SqlParameter[1];
            pam[0] = ClsDll.AddParameter("@PostId", PostId, SqlDbType.Int, 100);                       
            DataTable dt = ClsDll.ExecuteDTByProcedure("spInsertJobDetails", pam);
        }

        //Recruitment model insert event start

        public void InsertAppRec()
        {
            //to insert the gridview data from vacancyReceived into vacRec table
            //SqlParameter[] pam = new SqlParameter[6];
            //pam[0] = ClsDll.AddParameter("@ReceivalId", ReceivalId, SqlDbType.Int, 100);
            //pam[1] = ClsDll.AddParameter("@ApplicantId", ApplicantId, SqlDbType.Int, 100);
            //pam[2] = ClsDll.AddParameter("@Fname", Fname, SqlDbType.VarChar, 100);
            //pam[3] = ClsDll.AddParameter("@Lname", Lname, SqlDbType.VarChar, 100);
            //pam[4] = ClsDll.AddParameter("@PostId", PostId, SqlDbType.Int, 100);
            //pam[5] = ClsDll.AddParameter("@Status", Status, SqlDbType.Bit, 10);
            //DataTable dt = ClsDll.ExecuteDTByProcedure("spUpdateVacSl", pam);
            SqlParameter[] pam = new SqlParameter[2];
            pam[0] = ClsDll.AddParameter("@ReceivalId", ReceivalId, SqlDbType.Int, 100);
            pam[1] = ClsDll.AddParameter("@IsShortListed", IsShortListed, SqlDbType.Bit, 10);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spUpdateVacSl", pam);

        }

        public void InsertShortList()
        {         
            SqlParameter[] pam = new SqlParameter[2];
            pam[0] = ClsDll.AddParameter("@ReceivalId", ReceivalId, SqlDbType.Int, 100);
            pam[1] = ClsDll.AddParameter("@IsWrTestCall", IsWrTestCall, SqlDbType.Bit, 10);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spUpdateVacWtCl", pam);
        }

        public void InsertWritten()
        {
            SqlParameter[] pam = new SqlParameter[2];
            pam[0] = ClsDll.AddParameter("@ReceivalId", ReceivalId, SqlDbType.Int, 100);
            pam[1] = ClsDll.AddParameter("@IsWrTestPass", IsWrTestPass, SqlDbType.Bit, 10);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spUpdateVacWt", pam);
        }

        public void InsertInterview()
        {
            SqlParameter[] pam = new SqlParameter[2];
            pam[0] = ClsDll.AddParameter("@ReceivalId", ReceivalId, SqlDbType.Int, 100);
            pam[1] = ClsDll.AddParameter("@IsInterviewPss", IsInterviewPss, SqlDbType.Bit, 10);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spUpdateVacInt", pam);
        }

        public void InsertStatus()
        {
            SqlParameter[] pam = new SqlParameter[2];
            pam[0] = ClsDll.AddParameter("@ReceivalId", ReceivalId, SqlDbType.Int, 100);
            pam[1] = ClsDll.AddParameter("@IsEmployee", IsEmployee, SqlDbType.Bit, 10);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spUpdateVacSts", pam);
        }

        //Recruitment model insert event end

        //Recruitment model load event start

        public DataTable GetRecAppDet()
        {
            //populate the vacancyReceived.aspx
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetAllAppRecDet", parameters);
            return dt;
        }

        public DataTable GetShortListed()
        {
            //populate the ShortList.aspx
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetShortListedApp", parameters);
            return dt;
        }

        public DataTable GetWritten()
        {
            //populate writtentest.aspx
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetWrittenTest", parameters);
            return dt;
        }

        public DataTable GetInterviewed()
        {
            //populate interview
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetInterviewed", parameters);
            return dt;
        }

        public DataTable GetStatus()
        {
            //populate status
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetStatus", parameters);
            return dt;
        }

        //Recruitment model load event end

        public DataTable GetJobDetails()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetAllVacancyDetails", parameters);
            return dt;
        }

        public DataTable GetAllVac(int VacancyId)
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = ClsDll.AddParameter("@VacancyId", VacancyId, SqlDbType.Int, 100);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetAllVac", parameters);
            return dt;
        }

        public DataTable GetRecApp()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetAllAppRec", parameters);
            return dt;
        }    

        public DataTable GetAvlPost()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetAvlPost", parameters);
            return dt;
        }        

        public void VacRecDetails()
        {
            SqlParameter[] pam = new SqlParameter[4];
            pam[0] = ClsDll.AddParameter("@PostId", PostId, SqlDbType.Int, 100);
            pam[1] = ClsDll.AddParameter("@ApplicantId", ApplicantId, SqlDbType.Int, 100);
            pam[2] = ClsDll.AddParameter("@VacancyId", VacancyId, SqlDbType.Int, 100);
            //pam[2] = ClsDll.AddParameter("@ApplicantEmail", ApplicantEmail, SqlDbType.VarChar, 100);
            pam[3] = ClsDll.AddParameter("@ReceivedDate", ReceivedDate, SqlDbType.Date, 100);           
            DataTable dt = ClsDll.ExecuteDTByProcedure("spInsertReceivedAppDetails", pam);
        }
    }
}
