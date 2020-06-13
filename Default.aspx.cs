using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }  
    protected void BtnEnquiry_Click(object sender, EventArgs e)
    { 
        DatabaseManager db = new DatabaseManager();
        string cmd = "insert into TblEnquiry(Uname,EmailId,MobNo,E_Msg,EDT) values('" + TxtName.Text + "','" + TxtEmail.Text + "','" + TxtMobNo.Text + "','" + TxtMessage.Text + "','" + DateTime.Now.ToString() + "') ";
        bool x = db.ExecuteInsertUpdateDelete(cmd);
        if (x == true)
        {
            MySMSSender mss = new MySMSSender();
            string msg="Hellow"+TxtName.Text+"Thanks for Enquiry.We will contact you shortly.Regards-GGL";
            mss.SendMySMS(TxtMobNo.Text,msg);
            TxtName.Text = "";
            TxtEmail.Text = "";
            TxtMobNo.Text = "";
            TxtMessage.Text = "";
            Response.Write("<script>alert('Enquiry submitted successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Enquiry is not submitted!')</script>");
        }
    }
}