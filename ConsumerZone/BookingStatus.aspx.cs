using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsumerZone_BookingStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DatabaseManager dm = new DatabaseManager();
        string c = "select * from TblBooking where CName='" + TxtName.Text + "' and EmailID='" + TxtEmailId.Text + "' ";
        System.Data.DataTable dt = dm.ExecuteSelect(c);
        grid.DataSource = dt;
        grid.DataBind();
    }
}