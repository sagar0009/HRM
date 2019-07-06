using System;
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
        public DateTime OpenDate, CloseDate;
        public int PostId, Number;

        public DataSet GetData(string SPName, SqlParameter SPParameter)
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

        public void AddVacancy()
        {
            SqlParameter[] pam = new SqlParameter[4];
            pam[0] = ClsDll.AddParameter("@PostId", PostId, System.Data.SqlDbType.Int, 100);
            pam[1] = ClsDll.AddParameter("@OpenDate", OpenDate, System.Data.SqlDbType.Date, 100);
            pam[2] = ClsDll.AddParameter("@CloseDate", CloseDate, System.Data.SqlDbType.Date, 100);
            pam[3] = ClsDll.AddParameter("@Number", Number, System.Data.SqlDbType.Int, 100);

            DataTable dt = ClsDll.ExecuteDTByProcedure("spInsertVacancy", pam);
        }
    }
}
