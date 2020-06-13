using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for DatabaseManager
/// </summary>
public class DatabaseManager
{
    OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
    public bool ExecuteInsertUpdateDelete(string Query)
    {
        OleDbCommand cmd = new OleDbCommand(Query, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        int n=cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
            return true;
        else
            return false;
    }
    public DataTable ExecuteSelect(string Query)
    {
        OleDbDataAdapter da = new OleDbDataAdapter(Query, con);  //OleDbDataAdapter works as bridge b/w table and virtual table
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}