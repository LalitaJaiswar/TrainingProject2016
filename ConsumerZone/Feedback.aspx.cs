using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerZone_Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DatabaseManager dm = new DatabaseManager();
        string Query = "insert into Feedback(subject,message,givenby,posteddt) values('" + TxtSubject.Text + "','" + TxtFeedback.Text + "','" + Session["userid"] + "','"+DateTime.Now.ToShortDateString()+"')";
        bool x = dm.ExecuteInsertUpdateDelete(Query);
        if (x == true)
        {
            Response.Write("<script>alert('Feedback is submitted')</script>");
        }
        else
        {
            Response.Write("<script>alert('Feedback is not submitted')</script>");
        }
        TxtSubject.Text = "";
        TxtFeedback.Text = "";
    }
}