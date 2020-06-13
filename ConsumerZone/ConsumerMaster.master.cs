using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ConsumerZone_ConsumerMaster : System.Web.UI.MasterPage
{
    DatabaseManager dm = new DatabaseManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["userid"]!=null)
        {
            if (IsPostBack == false)
            {
                string Query = "select uname,profilepic from Registration where emailid='" + Session["userid"] + "'";
                DataTable dt = dm.ExecuteSelect(Query);
                if (dt.Rows.Count > 0)
                {
                    UName.Text = dt.Rows[0][0].ToString();
                    string profilepic = dt.Rows[0][1].ToString();
                    if (profilepic != null)
                    {
                        UserPic.ImageUrl = "~/ProfilePic/" + profilepic;
                    }
                }
            }
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}
