using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_DeleteUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["emailid"] != null)
        {
            DatabaseManager dm = new DatabaseManager();
            string emailid = Request.QueryString["emailid"].ToString();
            string mycmd1 = "delete from Registration where emailid='" + emailid + "'";
            string mycmd2 = "delete from Login where userid='" + emailid + "'";
            bool x = dm.ExecuteInsertUpdateDelete(mycmd1);
            if (x == true)
            {
                x = dm.ExecuteInsertUpdateDelete(mycmd2);
                if (x == true)
                {
                    Response.Write("<script>alert('User Deleted'); window.location.href='UserManagement.aspx';</script>");

                }
                else
                {
                    Response.Write("<script>alert('Database Error'); window.location.href='UserManagement.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Database Error'); window.location.href='UserManagement.aspx';</script>");
            }
        }
        else
        {
            Response.Redirect("UserManagement.aspx");
        }
    }
}