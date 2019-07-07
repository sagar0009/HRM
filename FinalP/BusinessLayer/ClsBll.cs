﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLayer;

namespace BusinessLayer
{
    public class ClsBll
    {
        public ClsDll objDll = new ClsDll();
        public DateTime OpenDate, CloseDate,ReceivedDate;
        public int PostId, Number,VacancyId,ApplicantId;
        public string JobType,JobDescription,ApplicantName,ApplicantEmail;

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

        public void AddJobDetails()
        {
            SqlParameter[] pam = new SqlParameter[2];
            pam[0] = ClsDll.AddParameter("@PostId", PostId, SqlDbType.Int, 100);            
            pam[1] = ClsDll.AddParameter("@JobDescription", JobDescription, SqlDbType.VarChar, 500);
            DataTable dt = ClsDll.ExecuteDTByProcedure("spInsertJobDetails", pam);
        }

        public DataTable GetJobDetails()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetAllVacancyDetails", parameters);
            return dt;
        }

        public DataTable GetRecApp()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = ClsDll.ExecuteDTByProcedure("spGetAllAppRec", parameters);
            return dt;
        }

        public void VacRecDetails()
        {
            SqlParameter[] pam = new SqlParameter[4];
            pam[0] = ClsDll.AddParameter("@PostId", PostId, SqlDbType.Int, 100);
            pam[1] = ClsDll.AddParameter("@ApplicantId", ApplicantId, SqlDbType.Int, 100);
            pam[2] = ClsDll.AddParameter("@ApplicantEmail", ApplicantEmail, SqlDbType.VarChar, 100);
            pam[3] = ClsDll.AddParameter("@ReceivedDate", ReceivedDate, SqlDbType.Date, 100);           
            DataTable dt = ClsDll.ExecuteDTByProcedure("spInsertAppReceived", pam);
        }
    }
}
