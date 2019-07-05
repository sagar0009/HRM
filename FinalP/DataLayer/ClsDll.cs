using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace DataLayer
{
    public class ClsDll
    {
        public string Conn = ConfigurationManager.ConnectionStrings["hrms"].ToString();

        public void ConnectDb(string query)
        {
            SqlConnection con = new SqlConnection(Conn);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public object ExecuteQuery(string sqlstring)
        {
            SqlConnection objsqlconn = new SqlConnection(Conn);
            objsqlconn.Open();
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand(sqlstring, objsqlconn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            return ds;
        }

        public DataSet GetDataFromSP(string SPName, SqlParameter SPParameter)
        {
            SqlConnection con = new SqlConnection(Conn);
            SqlDataAdapter da = new SqlDataAdapter(SPName, con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (SPParameter != null)
            {
                da.SelectCommand.Parameters.Add(SPParameter);
            }
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void InsertUserDetails(string query)
        {
            DataSet ds = new DataSet();
            ConnectDb(query);
        }

    }
}
