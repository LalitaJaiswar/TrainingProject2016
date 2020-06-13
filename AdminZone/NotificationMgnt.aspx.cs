using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_NotificationMgnt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            GridView1.DataBind();
        }
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        DatabaseManager dm = new DatabaseManager();
        string Query = "insert into TblNotification(NMessage,NDT) values('" + TxtNoti.Text + "','" + DateTime.Now.ToShortDateString() + "')";
        bool x = dm.ExecuteInsertUpdateDelete(Query);
        if (x == true)
        {
            GridView1.DataBind();
            Response.Write("<script>alert('Notification Saved.')</script>");
            TxtNoti.Text = "";
        }
        else
        {
            Response.Write("<script>alert('Database Error!')</script>");
        }
    }
    
}