using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerZone_RequestForGas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DatabaseManager dm = new DatabaseManager();
        DateTime CurDate=DateTime.Now;
        string BookingDate=CurDate.AddDays(7).ToString();
        string c = "insert into TblBooking(CName,ConType,ContactNo,EmailID,Address,CWeight,BookingDate,CDT) values('" + TxtCName.Text + "','" + DDLCType.SelectedValue + "','" + TxtContactNo.Text + "','" + TxtEmailID.Text + "','" + TxtAddress.Text + "','" + DDLCWeight.SelectedValue + "','" + BookingDate + "','" + DateTime.Now.ToString() + "')";
        if (dm.ExecuteInsertUpdateDelete(c) == true)
        {
            Response.Write("<script>alert('Your request is completed but not conformed now about booking of cylinder')</script>");
        }
        else
        {
            Response.Write("<script>alert('Your request is not completed')</script>");
        }
    }
}