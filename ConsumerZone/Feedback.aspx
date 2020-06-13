<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="ConsumerZone_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 95%;
            background:#d0d1d7;
            margin:0 auto;
            border-radius:2px;
            padding-left:10px;
        }
        .tdstyle 
        {
            color:black;
            font-size:20px;
            padding-bottom:10px;
        }
        .textstyle 
        {
            width:200px;
            height:30px;
            border-radius:2px;
            font-size:20px;
            margin-bottom:10px;
            border:1px solid orange;
        }
        #headingdiv 
        {
        height:35px;
        width:680px;
        margin-left:110px;
        text-align:center;
        border-radius:2px;
        padding-top:5px;
        color:green;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <div id="headingdiv">"Give Your Valuable Feedback"</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <div style="width:58%; height:auto; padding:50px; margin:0 auto; background:rgba(255, 255, 255, 0.89); box-shadow:0px 0px 15px gray; ">
        <table align="center" class="auto-style1">
            <tr>
                <td class="tdstyle">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="tdstyle">Enter Subject:</td>
                <td>
                    <asp:TextBox ID="TxtSubject" runat="server" CssClass="textstyle" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TxtSubject" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle">Enter Your Feedback:</td>
                <td>
                    <asp:TextBox ID="TxtFeedback" runat="server" TextMode="Multiline" CssClass="textstyle" Height="100px" style="resize:none"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TxtFeedback" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CssClass="textstyle" OnClick="BtnSubmit_Click" BackColor="orange" ForeColor="White"/>
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
