using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Registration : System.Web.UI.Page
{
    DatabaseManager dm = new DatabaseManager();
    CaptchaGenerator cp = new CaptchaGenerator();
    string[] imgcap = new string[2];
    static string capcode;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            imgcap = cp.ImgCaptcha();
            capcode = imgcap[0];
            ImgCaptcha.ImageUrl = imgcap[1];
        }
    }
    protected void BtnRefresh_Click(object sender, EventArgs e)
    {
        imgcap = cp.ImgCaptcha();
        capcode = imgcap[0];
        ImgCaptcha.ImageUrl = imgcap[1];
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        if (capcode == TxtCaptcha.Text)
        {
            //Response.Write("<script>alert('Do Registration')</script>");
            string gender = "",filename="",epass="";
            if (RbtnMale.Checked == true)
                gender = "Male";
            if (RbtnFemale.Checked == true)
                gender = "Female";
            epass = EncryptionManager.EncryptMyData(TxtPassword.Text);
            if (FUProfilePic.HasFile == true)
            filename = FUProfilePic.PostedFile.ContentType; 
            string ext = filename.Substring(filename.LastIndexOf('/') + 1);
            ext = ext.ToLower();
            ext = Path.GetRandomFileName() + "." + ext;
            string Query1 = "insert into Registration values('"+DDLConnectionType.SelectedValue+"','"+TxtName.Text+"','"+gender+"','"+TxtMobNo.Text+"','"+TxtEmailId.Text+"','"+TxtAddress.Text+"','"+ext+"','"+epass+"','"+DateTime.Now.ToShortDateString()+"')";
            string Query2 = "insert into Login values('"+TxtEmailId.Text+"','"+epass+"','user',1,0,'')";
            bool b = dm.ExecuteInsertUpdateDelete(Query1);
            if (b == true)
            {
                b = dm.ExecuteInsertUpdateDelete(Query2);
                if (b == true)
                {
                    string Msg = "Hellow" + TxtName.Text + "Thanks for registration. Your user id is:" + TxtEmailId.Text + "and your password is:" + TxtPassword.Text + "Regards-GGL";
                    MySMSSender ss = new MySMSSender();
                    ss.SendMySMS(TxtMobNo.Text, Msg);
                    FUProfilePic.SaveAs(Server.MapPath("ProfilePic/"+ext));
                    Response.Write("<script>alert('Registration Successfull')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Login details are not saved')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Database Error')</script>");
            }

        }
        else
        {
            Response.Write("<script>alert('Invalid Captcha Code!')</script>");
        }
    }
}