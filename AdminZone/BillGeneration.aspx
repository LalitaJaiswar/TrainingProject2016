<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BillGeneration.aspx.cs" Inherits="AdminZone_BillGeneration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            font-size:20px;
            font-weight:bold;
            padding:20px;
        }
        .txt
        {
            height:35px;
            width:230px; 
            margin:5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center><h1>Generate your bill here...</h1></center>
        <br />
        <hr />
        <table align="center" class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>Email ID:</td> 
                <td>
                    <asp:TextBox ID="TxtEmailId" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Click Here" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>Name:</td>
                <td>
                    <asp:TextBox ID="TxtName" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>Connection Type:</td>
                <td>
                    <asp:TextBox ID="TxtConnectionType" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Contact No.:</td>
                <td>
                    <asp:TextBox ID="TxtContactNo" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>Booking Date:</td>
                <td>
                    <asp:TextBox ID="TxtBookingDate" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Address:</td>
                <td>
                    <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine" CssClass="txt" Style="resize:none;"></asp:TextBox>
                </td>
                <td>Weight of Cylinder:</td>
                <td>
                    <asp:TextBox ID="TxtCWeight" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Processing Date:</td>
                <td>
                    <asp:TextBox ID="TxtProcessingDate" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Print"  OnClientClick="window.print()"/>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Signature of Customer<br />
                    <asp:Label ID="LblName" runat="server" ForeColor="red"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            
        </table>

    </div>
    </form>
</body>
</html>
