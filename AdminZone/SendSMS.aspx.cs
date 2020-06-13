using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_SendSMS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        MySMSSender mss = new MySMSSender();
        bool x = mss.SendMySMS(TxtMobNo.Text, TxtMsg.Text);
        if (x == true)
        {
            TxtMsg.Text = "";
            TxtMobNo.Text = "";
            Response.Write("<script>alert('SMS sent Successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Unable to send')</script>");
        }

    }
}