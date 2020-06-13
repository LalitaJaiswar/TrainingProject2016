using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerZone_ConsumerReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            GVReview.DataBind();
        }
    }
    protected void BtnPost_Click(object sender, EventArgs e)
    {
        DatabaseManager dm = new DatabaseManager();
        string MyCommand = "insert into TblReview(Userid,Topic,Message,ReviewDT) values('" + Session["userid"] + "','" + TxtTopic.Text + "','" + TxtMessage.Text + "','" + DateTime.Now.ToShortDateString() + "')";
        bool b = dm.ExecuteInsertUpdateDelete(MyCommand);
        if (b == true)
        {
            GVReview.DataBind();
            TxtMessage.Text = "";
            TxtTopic.Text = "";
            Response.Write("<script>alert('Post submitted successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Unable to submit Post')</script>");
        }
    }
    
}