using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ForgetPassword : System.Web.UI.Page
{
    static string code,epass;
    DatabaseManager dm = new DatabaseManager();
    CaptchaGenerator cm=new CaptchaGenerator();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        BtnOk.Visible = false;
        TxtCode.Visible = false;
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        code = cm.GetCode();
        string cmd = "Select passwd, mobileno from Registration where emailid='" + TxtEmail.Text + "'";
        dt = dm.ExecuteSelect(cmd);
        if (dt.Rows.Count > 0)
        {
            string msg = "Your OTP is" + code;
            MySMSSender ms = new MySMSSender();
            bool x = ms.SendMySMS(dt.Rows[0][1].ToString(), msg);
            Response.Write("<script>alert('Code is'+'"+code+"')</script>");
            epass = dt.Rows[0][0].ToString();
            BtnOk.Visible = true;
            TxtCode.Visible = true;
        }
        else
        {
            Response.Write("<script>alert('Invalid user....')</script>");
        }
    }
    protected void BtnOk_Click(object sender, EventArgs e)
    {
        if (TxtCode.Text == code)
        {
            string pass = EncryptionManager.EncryptMyData(epass);
            LblPass.Text = "Your password is: "+pass;
            TxtCode.Text = "";
        }
    }
}