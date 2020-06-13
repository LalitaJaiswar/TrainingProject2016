<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="SendSMS.aspx.cs" Inherits="AdminZone_SendSMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    #box 
    {
        height:auto;
        width:300px;
        border:5px double green;
        padding:25px;
    }
    .btn 
    {
     height:40px;
     width:250px;
     border:none;
     color:white;
     font-weight:bold;
     background:green;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <center>
        <h2 style="background:green; width:360px; color:white">Send SMS</h2><br />
        <div id="box">
            <asp:TextBox ID="TxtMobNo" runat="server" TextMode="Number" Placeholder="Enter Your Mobile No..."  Height="40px" Width="250px" required="required"/><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtMobNo" ErrorMessage="Please enter only 10 digits!"  ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator><br />
            <asp:TextBox ID="TxtMsg" runat="server" TextMode="MultiLine" Placeholder="Enter Your Message..."  Height="70px" Width="250px" required="required"/><br /><br />
            <asp:Button ID="BtnSubmit" runat="server" Text="Send SMS" class="btn" OnClick="BtnSubmit_Click"/>
        </div>
    </center>
</asp:Content>

