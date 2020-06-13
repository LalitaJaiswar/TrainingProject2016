<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="BookingStatus.aspx.cs" Inherits="ConsumerZone_BookingStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            background-color: #CCFF99;
            border-radius:5px;
            border:1px solid green;
            font-size:large;
            font-weight:bold;
            margin:20px auto;
        }
        #headingdiv 
        {
        height:35px;
        width:78%;
        margin:0px auto;
        background:green;
        text-align:center;
        border-radius:2px;
        padding-top:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <div id="headingdiv">Check Your Booking Status</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Enter Your Name:</td>
            <td>
                <asp:TextBox ID="TxtName" runat="server" Height="40px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Enter Your EmailID:</td>
            <td>
                <asp:TextBox ID="TxtEmailId" runat="server" Height="40px" Width="200px" required="required"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmailId" ErrorMessage="Invalid Email!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnSubmit" runat="server" BackColor="Green" ForeColor="White" Height="30px" Text="Submit" Width="100px" OnClick="BtnSubmit_Click" />
            </td>
        </tr>
    </table>
    <br /><br />
    <div style="margin:0px auto; width:70%; background:gray; border:1px solid black;">
    <asp:GridView ID="grid" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="green" Font-Bold="True" ForeColor="White"  Height="35px"/>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
        </div>
    <br />
</asp:Content>

