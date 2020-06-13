using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ConsumerZone_MyProfile : System.Web.UI.Page
{
    DatabaseManager dm = new DatabaseManager();
    static string gender = "", filename = "";
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            DisplayProfile();
            DisableControls();
        }
    }
    void DisplayProfile()
    {
        string Query = "select * from Registration where emailid='" + Session["userid"] + "'";
        dt = dm.ExecuteSelect(Query);
        if (dt.Rows.Count > 0)
        {
            TxtConnectionType.Text = dt.Rows[0][0].ToString();
            TxtName.Text = dt.Rows[0][1].ToString();
            gender = dt.Rows[0][2].ToString();
            if (gender == "Male")
            {
                RbtnMale.Checked = true;
            }
            if (gender == "Female")
            {
                RbtnFemale.Checked = true;
            }
            TxtMobNo.Text = dt.Rows[0][3].ToString();
            LblEmailId.Text = dt.Rows[0][4].ToString();
            TxtAddress.Text = dt.Rows[0][5].ToString();
            filename = dt.Rows[0][6].ToString();
            ImgUserPic.ImageUrl = "~/ProfilePic/" + filename;
            LblRegdt.Text = dt.Rows[0][8].ToString();
        }
    }
    void DisableControls()
    {
        BtnEdit.Visible = true;
        BtnUpdate.Visible = false;
        FUProfilePic.Visible = false;
        TxtName.Enabled = false;
        TxtMobNo.Enabled = false;
        TxtAddress.Enabled = false;
        TxtConnectionType.Enabled = false;
    }
    void EnableControls()
    {
        BtnEdit.Visible = false;
        BtnUpdate.Visible = true;
        FUProfilePic.Visible = true;
        TxtName.Enabled = true;
        TxtMobNo.Enabled = true;
        TxtAddress.Enabled = true;
        TxtConnectionType.Enabled = true;
    }

    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        EnableControls();
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        if (RbtnMale.Checked)
        {
            gender = "Male";
        }
        if (RbtnFemale.Checked)
        {
            gender = "Female";
        }
        if (FUProfilePic.HasFile == true)
        {
            filename = FUProfilePic.FileName;
        }
        string Query = "update Registration set connectiontype='" + TxtConnectionType.Text + "',uname='" + TxtName.Text + "',gender='" + gender + "',mobileno='" + TxtMobNo.Text + "',address='" + TxtAddress.Text + "',profilepic='" + filename + "' where emailid='"+Session["userid"]+"'";
        bool x = dm.ExecuteInsertUpdateDelete(Query);
        if (x == true)
        {
            if (FUProfilePic.HasFile == true)
                FUProfilePic.SaveAs(Server.MapPath("~/ProfilePic/" + FUProfilePic.FileName));
            DisplayProfile();
            DisableControls();
            Response.Write("<script>alert('Your Profile is Updated')</script>");
        }
        else
        {
            DisplayProfile();
            DisableControls();
            Response.Write("<script>alert('Your Profile is not updated')</script>");
        }
    }
    
}