<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="AdminZone_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 
        {
            width: 75%;
            margin: 0px auto;
            font-size: 18px;
            border:1px solid green;
            padding-left:5%;
            background:#fff;
        }
        .trstyle 
        {
            height:50px;

        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <div style="height:40px; width:75%; margin:0px auto; text-align:center; background:green; color:white;  margin-bottom:10px; border-radius:3px 3px 0px 0px;">
        <h2>Change Your Password</h2>
    </div>
    <table align="center" class="auto-style1">
    <tr class="trstyle">
        <td>Enter Old Password</td>
        <td>
            <asp:TextBox ID="TxtOldPassword" runat="server" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtOldPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="trstyle">
        <td>Enter New Password:</td>
        <td>
            <asp:TextBox ID="TxtNewPassword" runat="server" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtNewPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr  class="trstyle">
        <td>Confirm Password:</td>
        <td>
            <asp:TextBox ID="TxtConfirmPassword" runat="server" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtConfirmPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNewPassword" ControlToValidate="TxtConfirmPassword" ErrorMessage="Pass. not Matched!" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr class="trstyle">
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnSubmit" runat="server" Height="30px" OnClick="BtnSubmit_Click" Text="Change Password" Width="200px" backcolor="green" ForeColor="white"/>
        </td>
    </tr>
</table>
</asp:Content>

