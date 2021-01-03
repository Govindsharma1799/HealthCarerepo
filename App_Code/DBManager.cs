using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HealthCare
{
    public class DBManager
    {
        SqlConnection con = new SqlConnection("Data Source=JARVIS;Initial Catalog=HealthCareDB;Integrated Security=True");
        public bool ExecuteInsertUpdateOrDelete(string commandText)
        {
            SqlCommand cmd = new SqlCommand(commandText, con);
            if (con.State == ConnectionState.Closed) con.Open();
            int n = cmd.ExecuteNonQuery();
            con.Close();
            return n > 0 ? true : false;
        }
        public DataTable ReadBulkData(string commandText)
        {
            SqlDataAdapter da = new SqlDataAdapter(commandText, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}