<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #fgdiv {
        height:auto;
        width:45%;
        margin:20px auto;
        padding:50px;
        box-shadow:0px 0px 20px;
        }
        .txt {
        width:300px;
        height:32px;
        padding-left:3px;
        font-size:17px;
        border-radius:3px;
        border:1px solid #ccc;
        }
        .btn {
        height:34px;
        width:306px;
        background:#009900;
        color:white;
        font-size:18px;
        border:none;
        border-radius:3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><br /><h1 style="color:#009900">Search your password here....</h1><br /><hr width="95%"/>
    <div id="fgdiv">   
        <asp:TextBox ID="TxtEmail" runat="server" CssClass="txt" TextMode="Email" required="required" Placeholder="Enter your Email Id...."></asp:TextBox>
        <br /><br />
        <asp:Button ID="BtnSubmit" runat="server" Text="Search Password" cssclass="btn" OnClick="BtnSubmit_Click"/><br /><br />
       <asp:TextBox ID="TxtCode" runat="server"  Placeholder="Enter the code sent to your mobile no..." CssClass="txt"></asp:TextBox><br /><br />
       <asp:Button ID="BtnOk" runat="server" Text="OK" CssClass="btn" OnClick="BtnOk_Click"/><br />
       <asp:Label ID="LblPass" runat="server" Text="" Font-Size="X-Large" ForeColor="Red"></asp:Label>
        </div>
       </center>
</asp:Content>

