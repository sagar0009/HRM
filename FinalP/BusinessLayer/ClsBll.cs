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

        public DataSet GetData(string SPName, SqlParameter SPParameter)
        {
            return objDll.GetDataFromSP(SPName,SPParameter);

        }

        public void AddUser(string query)
        {
            DataSet ds = new DataSet();
            
             objDll.InsertUserDetails(query);
        }

        public bool CheckEmail(string query, bool us)
        {
            return objDll.CheckUserEmail(query, us);
        }
    }
}
