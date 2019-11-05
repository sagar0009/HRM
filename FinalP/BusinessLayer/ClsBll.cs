using DataLayer;
using System;
using System.Data;
using System.Data.SqlClient;

namespace BusinessLayer
{
    public class ClsBll
    {
        public ClsDll objDll = new ClsDll();
        public DateTime OpenDate, CloseDate, ReceivedDate;
        public int PostId, SkillId, Number, VacancyId, ApplicantId, ReceivalId, Salary, ExpReq;
        public string JobType, JobDescription, ApplicantName, ApplicantEmail, Fname, Lname, SkillType, Key, Index;
        public string AcaQua, PostName, StatementType;
        public bool Status, IsShortListed, IsWrTestCall, IsWrTestPass, IsInterviewPss, IsEmployee;
        public DateTime selectDate;
        public byte[] data;
        public int EmpId, CmpId, DeptId;
        public string Reply, Path, EmpName, Address, Email, MarSts, BankAcN, Degree, BankName, Pan;
        public DataSet GetJob(string SPName, SqlParameter SPParameter)
        {
            return objDll.GetDataFromSP(SPName, SPParameter);

        }

        public void UpdateEmp()
        {
            SqlParameter[] pam = new SqlParameter[8];
            pam[0] = ClsDll.AddParameter("@em", Email, SqlDbType.VarChar, 100);
            pam[1] = ClsDll.AddParameter("@ad", Address, SqlDbType.VarChar, 100);
            pam[2] = ClsDll.AddParameter("@acn", BankName, SqlDbType.VarChar, 100);
            pam[3] = ClsDll.AddParameter("@mr", MarSts, SqlDbType.VarChar, 100);
            pam[4] = ClsDll.AddParameter("@pan", Pan, SqlDbType.Int, 50);
            pam[5] = ClsDll.AddParameter("@bn", BankAcN, SqlDbType.VarChar, 100);
            pam[6] = ClsDll.AddParameter("@dg", Degree, SqlDbType.VarChar, 100);
            pam[7] = ClsDll.AddParameter("@eid", EmpId, SqlDbType.Int, 20);
            ClsDll.ExecuteDTByProcedure("spUpdateEmp", pam);
        }

        public DataTable GetEmp()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = ClsDll.AddParameter("@DeptId", DeptId, SqlDbType.Int, 20);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetEmp", parameters);
            return dt;
        }

        public void InsertCV()
        {

            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = ClsDll.AddParameter("@uid", EmpId, SqlDbType.Int, 20);
            parameters[1] = ClsDll.AddParameter("@path", Path, SqlDbType.VarChar, 100);
            ClsDll.ExecuteDTByProcedure("spInsertCv", parameters);
        }
        public DataTable GetEmpByEid(int eid)
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = ClsDll.AddParameter("@EmpId", eid, SqlDbType.Int, 20);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetEmpByEid", parameters);
            return dt;
        }

        public DataTable GetEmpDet(int eid)
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = ClsDll.AddParameter("@eid", eid, SqlDbType.Int, 20);
            return ClsDll.ExecuteDTByProcedure("spGetEmpDetails", parameters);

        }

        public void AddAttEmp(string query)
        {
            objDll.ConnectDb(query);
        }

        public void AddUser(string query)
        {
            objDll.InsertUserDetails(query);
        }

        public bool CheckEmail(string query, bool us)
        {
            return objDll.CheckUserEmail(query, us);
        }

        public string ValidatePw(string query, string pw)
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
            ClsDll.ExecuteDTByProcedure("spGetJobByVacancy", pam);
        }

        public DataTable JobDet()
        {
            SqlParameter[] pam = new SqlParameter[1];
            pam[0] = ClsDll.AddParameter("@VacancyId", VacancyId, SqlDbType.Int, 100);
            return ClsDll.ExecuteDTByProcedure("spGetJobByVacancy", pam);

        }

        public DataTable AppUserDet(int aid)
        {
            SqlParameter[] pam = new SqlParameter[1];
            pam[0] = ClsDll.AddParameter("@AppId", aid, SqlDbType.Int, 100);
            return ClsDll.ExecuteDTByProcedure("spGetUserDetails", pam);
        }


        public int GetUserByEmail()
        {
            SqlParameter[] pam = new SqlParameter[1];
            pam[0] = ClsDll.AddParameter("@ApplicantEmail", ApplicantEmail, SqlDbType.VarChar, 100);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetUserByEmail", pam);
            int str = Convert.ToInt32(dt.Rows[0][0]);
            return str;
        }

        public int GetEmpByEmail(string em)
        {
            SqlParameter[] pam = new SqlParameter[1];
            pam[0] = ClsDll.AddParameter("@em", em, SqlDbType.VarChar, 100);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetEmpByEmail", pam);
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
            ClsDll.ExecuteDTByProcedure("spInsertVacancy", pam);
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
            ClsDll.ExecuteDTByProcedure("spEditPost", pam);
        }

        public void AddJobDetails(string jd)
        {
            SqlParameter[] pam = new SqlParameter[2];
            pam[0] = ClsDll.AddParameter("@PostId", PostId, SqlDbType.Int, 100);
            pam[1] = ClsDll.AddParameter("@JobDesc", jd, SqlDbType.NVarChar, 500);
            ClsDll.ExecuteDTByProcedure("spInsertJobDetails", pam);
        }

        //Recruitment model insert event start

        public void InsertAppRec()
        {
            //to insert the gridview data from vacancyReceived into vacRec table           
            SqlParameter[] pam = new SqlParameter[2];
            pam[0] = ClsDll.AddParameter("@ReceivalId", ReceivalId, SqlDbType.Int, 100);
            pam[1] = ClsDll.AddParameter("@IsShortListed", IsShortListed, SqlDbType.Bit, 10);
            ClsDll.ExecuteDTByProcedure("spUpdateVacSl", pam);

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
            ClsDll.ExecuteDTByProcedure("spUpdateVacWt", pam);
        }

        public void InsertInterview()
        {
            SqlParameter[] pam = new SqlParameter[2];
            pam[0] = ClsDll.AddParameter("@ReceivalId", ReceivalId, SqlDbType.Int, 100);
            pam[1] = ClsDll.AddParameter("@IsInterviewPss", IsInterviewPss, SqlDbType.Bit, 10);
            ClsDll.ExecuteDTByProcedure("spUpdateVacInt", pam);
        }

        public void InsertStatus()
        {
            SqlParameter[] pam = new SqlParameter[2];
            pam[0] = ClsDll.AddParameter("@ReceivalId", ReceivalId, SqlDbType.Int, 100);
            pam[1] = ClsDll.AddParameter("@IsEmployee", IsEmployee, SqlDbType.Bit, 10);
            ClsDll.ExecuteDTByProcedure("spUpdateVacSts", pam);
        }


        public void InsertEmp(string fn, string ln, string ad, string em, string gn, string ph, string pw, int di, int pi, int ci)
        {
            SqlParameter[] pam = new SqlParameter[10];
            pam[0] = ClsDll.AddParameter("@fn", fn, SqlDbType.NVarChar, 50);
            pam[1] = ClsDll.AddParameter("@ln", ln, SqlDbType.NVarChar, 50);
            pam[2] = ClsDll.AddParameter("@ad", ad, SqlDbType.NVarChar, 500);
            pam[3] = ClsDll.AddParameter("@em", em, SqlDbType.NVarChar, 50);
            pam[4] = ClsDll.AddParameter("@ph", ph, SqlDbType.NVarChar, 50);
            pam[5] = ClsDll.AddParameter("@did", di, SqlDbType.Int, 10);
            pam[6] = ClsDll.AddParameter("@pid", pi, SqlDbType.Int, 10);
            pam[7] = ClsDll.AddParameter("@pw", pw, SqlDbType.NVarChar, 50);
            pam[8] = ClsDll.AddParameter("@cid", ci, SqlDbType.Int, 10);
            pam[9] = ClsDll.AddParameter("@gn", gn, SqlDbType.Char, 10);
            ClsDll.ExecuteDTByProcedure("spInsertEmp", pam);
        }

        public void InsertActivation(int aid, int code, int vid)
        {
            SqlParameter[] pam = new SqlParameter[3];
            pam[0] = ClsDll.AddParameter("@AppId", aid, SqlDbType.Int, 10);
            pam[1] = ClsDll.AddParameter("@Code", code, SqlDbType.Int, 50);
            pam[2] = ClsDll.AddParameter("@vid", vid, SqlDbType.Int, 10);
            ClsDll.ExecuteDTByProcedure("spActivateCode", pam);

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

        public DataTable GetCvUrl(int uid)
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = ClsDll.AddParameter("@uid", uid, SqlDbType.Int, 10);
            return ClsDll.ExecuteDTByProcedure("spGetCvUrl", parameters);
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

        //Attendance model database
        public DataTable GetEmpAttPart()
        {
            //get Eid and date from Attendance 
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetAttPart", parameters);
            return dt;
        }

        public DataTable GetAttendance(int did)
        {
            //populate attendance
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = ClsDll.AddParameter("@Date", selectDate, SqlDbType.Date, 100);
            parameters[1] = ClsDll.AddParameter("@DeptId", did, SqlDbType.Int, 10);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetAttendance", parameters);
            return dt;
        }

        public DataTable GetAttByEid(int eid)
        {
            //populate attendance
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = ClsDll.AddParameter("@Date", selectDate, SqlDbType.Date, 100);
            parameters[1] = ClsDll.AddParameter("@DeptId", eid, SqlDbType.Int, 10);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetAttByEid", parameters);
            return dt;
        }

        public DataTable GetHoliday(int yr, int mn, int d)
        {
            SqlParameter[] parameters = new SqlParameter[3];
            parameters[0] = ClsDll.AddParameter("@Year", yr, SqlDbType.Int, 100);
            parameters[1] = ClsDll.AddParameter("@Month", mn, SqlDbType.Int, 10);
            parameters[2] = ClsDll.AddParameter("@Day", d, SqlDbType.Int, 10);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetHoliday", parameters);
            return dt;
        }

        public void AddHoliday(int yr, int mn, int dy, string det)
        {
            SqlParameter[] parameters = new SqlParameter[4];
            parameters[0] = ClsDll.AddParameter("@yr", yr, SqlDbType.Int, 100);
            parameters[1] = ClsDll.AddParameter("@mn", mn, SqlDbType.Int, 10);
            parameters[2] = ClsDll.AddParameter("@dy", dy, SqlDbType.Int, 10);
            parameters[3] = ClsDll.AddParameter("@Details", det, SqlDbType.NVarChar, 500);
            ClsDll.ExecuteDTByProcedure("spAddHoliday", parameters);
        }

        //complain  sp
        public DataTable GetComplain(int eid)
        {
            //populate complain
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = ClsDll.AddParameter("@eid", eid, SqlDbType.Int, 10);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetComplain", parameters);
            return dt;
        }

        public void InsertComplain(int eid, string sub, string msg, DateTime dt)
        {
            SqlParameter[] parameters = new SqlParameter[4];
            parameters[0] = ClsDll.AddParameter("@eid", eid, SqlDbType.Int, 100);
            parameters[1] = ClsDll.AddParameter("@sub", sub, SqlDbType.NVarChar, 10);
            parameters[2] = ClsDll.AddParameter("@date", dt, SqlDbType.Date, 10);
            parameters[3] = ClsDll.AddParameter("@msg", msg, SqlDbType.NVarChar, 500);
            ClsDll.ExecuteDTByProcedure("spInsertComplain", parameters);
        }

        public DataTable GetCmpById()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = ClsDll.AddParameter("@CmpId", CmpId, SqlDbType.Int, 20);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetComplainById", parameters);
            return dt;
        }

        public void UpdateCmpReply()
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = ClsDll.AddParameter("@CmpId", CmpId, SqlDbType.Int, 20);
            parameters[1] = ClsDll.AddParameter("@Reply", Reply, SqlDbType.NVarChar, 500);
            ClsDll.ExecuteDTByProcedure("spUpdateCmpRply", parameters);
        }

        //leave sp
        public DataTable GetLeave(String stat)
        {
            SqlParameter[] parameters = new SqlParameter[3];
            parameters[0] = ClsDll.AddParameter("@DeptId", DeptId, SqlDbType.Int, 20);
            parameters[1] = ClsDll.AddParameter("@EmpId", EmpId, SqlDbType.Int, 20);
            parameters[2] = ClsDll.AddParameter("@Status", stat, SqlDbType.NVarChar, 20);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetLeave", parameters);
            return dt;
        }

        public void UpdateLeave(int lid, string stat)
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = ClsDll.AddParameter("@LeaveId", lid, SqlDbType.Int, 20);
            parameters[1] = ClsDll.AddParameter("@Status", stat, SqlDbType.NVarChar, 20);
            ClsDll.ExecuteDTByProcedure("spUpdateLeaveStatus", parameters);
        }

        public void DeleteLeave(int lid)
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = ClsDll.AddParameter("@LeaveId", lid, SqlDbType.Int, 20);
            parameters[1] = ClsDll.AddParameter("@LveStatus", 0, SqlDbType.Bit, 20);
            ClsDll.ExecuteDTByProcedure("spUpdateLeaveStatus", parameters);

        }


        //PayPortal sp 
        public void InsertClass(string cn, int bp, int sal, int ta, int ma, int la)
        {
            SqlParameter[] parameters = new SqlParameter[6];
            parameters[0] = ClsDll.AddParameter("@ClsName", cn, SqlDbType.NVarChar, 50);
            parameters[1] = ClsDll.AddParameter("@BasicPay", bp, SqlDbType.Int, 50);
            parameters[2] = ClsDll.AddParameter("@Salary", sal, SqlDbType.NVarChar, 50);
            parameters[3] = ClsDll.AddParameter("@TravAllow", ta, SqlDbType.Int, 50);
            parameters[4] = ClsDll.AddParameter("@MedAllow", ma, SqlDbType.Int, 50);
            parameters[5] = ClsDll.AddParameter("@LunchAll", la, SqlDbType.Int, 50);
            ClsDll.ExecuteDTByProcedure("spInsertClass", parameters);
        }

        public void UpdateEmpSts(string sts, int eid)
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = ClsDll.AddParameter("@EmpId", eid, SqlDbType.Int, 10);
            parameters[1] = ClsDll.AddParameter("@EmpSts", sts, SqlDbType.NVarChar, 20);
            ClsDll.ExecuteDTByProcedure("spUpdateEmpSts", parameters);
        }

        public void UpdateEmpResignation(DateTime dt, int eid)
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = ClsDll.AddParameter("@ResDate", dt, SqlDbType.DateTime, 10);
            parameters[1] = ClsDll.AddParameter("@EmpId", eid, SqlDbType.Int, 10);
            ClsDll.ExecuteDTByProcedure("spUpdateEmpResDate", parameters);
        }

        public DataTable TotWD(int yr, int mn)
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = ClsDll.AddParameter("@FullYear", yr, SqlDbType.Int, 10);
            parameters[1] = ClsDll.AddParameter("@mn", mn, SqlDbType.Int, 10);
            return ClsDll.ExecuteDTByProcedure("spGetTotWorkDays", parameters);

        }

        public DataTable AbsDays(DateTime dt, int eid)
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = ClsDll.AddParameter("@Fd", dt, SqlDbType.Date, 10);
            parameters[1] = ClsDll.AddParameter("@EmpId", eid, SqlDbType.Int, 10);
            return ClsDll.ExecuteDTByProcedure("spGetAbsDays", parameters);
        }

        public DataTable SalDet(int eid, int yr, int mn)
        {
            SqlParameter[] parameters = new SqlParameter[3];
            parameters[0] = ClsDll.AddParameter("@eid", eid, SqlDbType.Int, 10);
            parameters[1] = ClsDll.AddParameter("@yr", yr, SqlDbType.Int, 10);
            parameters[2] = ClsDll.AddParameter("@mn", mn, SqlDbType.Int, 10);
            return ClsDll.ExecuteDTByProcedure("spGetSalaryDet", parameters);
        }

        public void InsertSalDet(int eid, int wd, int lv, int ts, int td, int ns, int yr, int mn)
        {
            SqlParameter[] parameters = new SqlParameter[8];
            parameters[0] = ClsDll.AddParameter("@eid", eid, SqlDbType.Int, 10);
            parameters[1] = ClsDll.AddParameter("@wd", wd, SqlDbType.Int, 10);
            parameters[2] = ClsDll.AddParameter("@tl", lv, SqlDbType.Int, 10);
            parameters[3] = ClsDll.AddParameter("@ts", ts, SqlDbType.Int, 10);
            parameters[4] = ClsDll.AddParameter("@td", td, SqlDbType.Int, 10);
            parameters[5] = ClsDll.AddParameter("@ns", ns, SqlDbType.Int, 10);
            parameters[6] = ClsDll.AddParameter("@yr", yr, SqlDbType.Int, 10);
            parameters[7] = ClsDll.AddParameter("@mn", mn, SqlDbType.Int, 10);
            ClsDll.ExecuteDTByProcedure("spInsertSalDet", parameters);
        }

        //user module
        public DataTable UserDet(int uid)
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = ClsDll.AddParameter("@uid", uid, SqlDbType.Int, 10);
            return ClsDll.ExecuteDTByProcedure("SpGetUser", parameters);
        }

        public DataTable UserEmp(string em)
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = ClsDll.AddParameter("@em", em, SqlDbType.NVarChar, 100);
            return ClsDll.ExecuteDTByProcedure("SpGetUserEmp", parameters);
        }

        public DataTable ApplicantDet(int code, string em)
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = ClsDll.AddParameter("@em", em, SqlDbType.NVarChar, 100);
            parameters[1] = ClsDll.AddParameter("@code", code, SqlDbType.Int, 10);
            return ClsDll.ExecuteDTByProcedure("spActEmp", parameters);
        }

        public void InsertLeave(int eid, string rsn, int dy, DateTime dt, DateTime sd, DateTime ed)
        {
            SqlParameter[] parameters = new SqlParameter[7];
            parameters[0] = ClsDll.AddParameter("@rsn", rsn, SqlDbType.NVarChar, 100);
            parameters[2] = ClsDll.AddParameter("@eid", eid, SqlDbType.Int, 10);
            parameters[3] = ClsDll.AddParameter("@date", dt, SqlDbType.Date, 100);
            parameters[4] = ClsDll.AddParameter("@days", dy, SqlDbType.Int, 10);
            parameters[5] = ClsDll.AddParameter("@sdate", sd, SqlDbType.Date, 100);
            parameters[1] = ClsDll.AddParameter("@edate", ed, SqlDbType.Date, 10);
            parameters[6] = ClsDll.AddParameter("@DeptId", DeptId, SqlDbType.Int, 20);
            ClsDll.ExecuteDTByProcedure("spInsertLeave", parameters);
        }
    }

}
