﻿using System;
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
        public static string Conn = ConfigurationManager.ConnectionStrings["hrms"].ToString();

        public static string Conn2 = ConfigurationManager.ConnectionStrings["tsts"].ToString();
        public void ConnectDb(string query)
        {
            SqlConnection con = new SqlConnection(Conn);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public void ConnectDb2(string query)
        {
            SqlConnection con = new SqlConnection(Conn2);
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

        public static SqlParameter AddParameter(string pName,object value,SqlDbType dbType, int size)
        {
            SqlParameter param = new SqlParameter();
            param.ParameterName = pName;
            param.Value = value;
            param.SqlDbType = dbType;
            param.Size = size;
            param.Direction = ParameterDirection.Input;
            return param;
        }

        public static DataTable ExecuteDTByProcedure(string pName,SqlParameter[] Params)
        {

            SqlConnection con = new SqlConnection(Conn);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = pName;
            cmd.Parameters.AddRange(Params);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            con.Open();
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
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
            ConnectDb(query);
        }

        public bool CheckUserEmail(string query,bool us)
        {
            SqlConnection con = new SqlConnection(Conn);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();                             
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                us = false;
            }
            else
            {
                us = true;
            }
            con.Close();
            return us;
        }

        public string ValidatePassword(string query,string pw)
        {
            SqlConnection con = new SqlConnection(Conn);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                pw = ds.Tables[0].Rows[0][0].ToString();
            }
            else
            {
                pw = string.Empty;
            }
            con.Close();
            return pw;
        }

    }
}
