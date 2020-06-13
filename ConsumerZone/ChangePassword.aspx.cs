using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerZone_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DatabaseManager dm = new DatabaseManager();
        string oldpassword = EncryptionManager.EncryptMyData(TxtOldPassword.Text);
        string newpassword = EncryptionManager.EncryptMyData(TxtNewPassword.Text);
        string Query = "update Login set passwd='" + newpassword + "' where userid='" + Session["userid"] + "' and passwd='" + oldpassword + "'";
        string Query2 = "update Registration set passwd='" + newpassword + "' where emailid='" + Session["userid"] + "' and passwd='" + oldpassword + "'";
        bool x = dm.ExecuteInsertUpdateDelete(Query);
        if (x == true)
        {
            if (dm.ExecuteInsertUpdateDelete(Query2) == true)
            {
                Response.Write("<script>alert('Password Changed Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Password Changed but not successfully.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Password is not changed')</script>");
        }
    }
}