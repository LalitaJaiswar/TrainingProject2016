<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 
        {
        width:65%;
        margin: auto;
        padding:0px 10px 10px 10px;
        font-size:18px;
        border:1px solid #dddddd;
        }
        .txtstyle 
        {
            height:30px;
            width:200px;
        }
        .tdstyle 
        {
            height:50px;
            }
        #dimage 
        {
            height:90px;
            width:400px;
            padding:10px 0px 0px 0px ;
            border:1px solid #dddddd;
        }
        center 
        {
            margin-top:-50px;
            margin-bottom:10px;
        }
        div a
        {
            color:#00cc00;
            text-align:center;
        }
        .btnstyle
        {
          height:32px;
          Width:100px;
          Background:#00cc00; 
          border:none; 
          font-size:15px;
          color:white;
        }
        .ForgetP {
            width: 140px;
            padding: 4px 5px 6px 6px;
            background: orange;
            text-decoration: none;
            font-size: 18px;
            color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:770px; height:700px;">
     <div style="width:65%; height:35px; margin:20px auto; font-size:22px; text-align:center; border:1px solid #dddddd; background:#ccc">Existing Users</div>
    <table class="auto-style1" style="background-color: #FFFFFF">
    
    <tr>
        <td colspan="2" style="font-size: x-large; font-weight: bold; color:#00cc00;"><img src="images/login111.png"/><center>Login Here....</center></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td class="tdstyle">Enter User ID(Email ID):</td>
        <td class="tdstyle">
            <asp:TextBox ID="TxtUserId" runat="server"  CssClass="txtstyle" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUserId" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="tdstyle">Enter Your Password:</td>
        <td class="tdstyle">
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" CssClass="txtstyle"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="tdstyle" colspan="2" style="text-align: center">
            <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click"  class="btnstyle"/>
            <asp:HyperLink ID="ForgetPass"  runat="server" NavigateUrl="~/ForgetPassword.aspx" class="ForgetP">Forgotten Password?</asp:HyperLink>
        </td>
    </tr>
</table>
        <br /><br />
     <div style="width:65%; height:35px; margin:20px auto; font-size:22px; text-align:center; border:1px solid #dddddd; background:#ccc">New Users</div>
        <div style="width:480px; height:auto; margin:20px auto; padding:10px; text-align:center; border:1px solid #dddddd">
            <a href="RegistrationInstruction.aspx">Why Registration?</a><br />
            <a href="RegistrationInstruction1.aspx">Instruction</a><br />
            <a href="RegistrationInstruction1.aspx">Benfits to Users</a> <br /><br />
            <a href="Registration.aspx" >Register Now</a>         
        </div>
        
</div>
</asp:Content>

