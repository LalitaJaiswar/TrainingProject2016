<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ConsumerZone_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width:510px;
            border:1px solid #dddddd;
            border-radius:0px;
            padding-left:10px;
        }
        #changepassimg 
        {
            height: 248px;
            width: 200px;
            border:1px solid #dddddd;
            margin-right:25px;
            float: left;
        }
        .tdstyle 
        {
            font-size:17px;
            padding-bottom:10px;
        }
        .textstyle 
        {
            width:200px;
            height:30px;
            border-radius:2px;
            font-size:17px;
            margin-bottom:10px;
            border:1px solid #dddddd;
        }
        #headingdiv 
        {
        height:35px;
        width:787px;
        border:1px solid #dddddd;
        text-align:center;
        border-radius:2px;
        padding-top:5px;
        margin:0px auto;
        background:green;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <div id="headingdiv">Change Your Password</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <div style="width:737px; height:auto; border-radius:0px; margin:0px auto; background:rgba(255, 255, 255, 0.89); border:1px solid #dddddd; padding:25px;">
        <img src="../images/changepass.png" id="changepassimg"/>
        <table align="center" class="auto-style1">
            <tr>
                <td class="tdstyle">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="tdstyle">Enter Old Password: </td>
                <td>
                    <asp:TextBox ID="TxtOldPassword" runat="server" TextMode="Password" CssClass="textstyle" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TxtOldPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle">Enter New Password:</td>
                <td>
                    <asp:TextBox ID="TxtNewPassword" runat="server" TextMode="Password" CssClass="textstyle" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TxtNewPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle">Confirm Password:</td>
                <td>
                    <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password" CssClass="textstyle" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TxtConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNewPassword" ControlToValidate="TxtConfirmPassword" ErrorMessage="Not Matched!" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="Change Password" CssClass="textstyle" OnClick="BtnSubmit_Click" BackColor="Orange" />
                </td>
            </tr>
            <tr>
                <td class="tdstyle">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

