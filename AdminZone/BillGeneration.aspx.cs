using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_BillGeneration : System.Web.UI.Page
{
    DatabaseManager dm = new DatabaseManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            DisableControl();
        }

    }
    public void GenerateBill()
    {
        string cmd = "select * from TblBooking where EmailID='" + TxtEmailId.Text + "'";
        System.Data.DataTable dt = dm.ExecuteSelect(cmd);
        if (dt.Rows.Count > 0)
        {
            TxtName.Text = dt.Rows[0][1].ToString();
            TxtConnectionType.Text = dt.Rows[0][2].ToString();
            TxtContactNo.Text = dt.Rows[0][3].ToString();
            TxtEmailId.Text = dt.Rows[0][4].ToString();
            TxtAddress.Text = dt.Rows[0][5].ToString();
            TxtCWeight.Text = dt.Rows[0][6].ToString();
            TxtProcessingDate.Text = dt.Rows[0][7].ToString();
            TxtBookingDate.Text = dt.Rows[0][8].ToString();
            LblName.Text = TxtName.Text;
        }
        else
        {
            Response.Write("<script>alert('Invalid Email Id!')</script>");
        }
    }
    public void DisableControl()
    {
        TxtName.ReadOnly = true;
        TxtProcessingDate.ReadOnly = true;
        TxtCWeight.ReadOnly = true;
        TxtContactNo.ReadOnly = true;
        TxtConnectionType.ReadOnly = true;
        TxtBookingDate.ReadOnly = true;
        TxtAddress.ReadOnly = true;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GenerateBill();
        Button1.Visible = false;
    }
    
}