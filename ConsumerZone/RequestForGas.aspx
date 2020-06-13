<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="RequestForGas.aspx.cs" Inherits="ConsumerZone_RequestForGas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 75%;
            box-shadow:0px 0px 20px gray;
            font-family:'Times New Roman';
            font-size:18px;
            margin:0px auto;
            padding:20px;
            border-radius:3px;
        }
        .txt 
        {
            width:300px;
            height:34px;
            margin:5px;
            font-size:15px;
            background:#ccc;
            border:none;
        }
        #headingdiv 
        {
        height:35px;
        width:855px;
        margin:0px auto;
        margin-left:25px;
        background:green;
        text-align:center;
        border-radius:2px;
        padding-top:5px;
        }
        td {
        width:300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <div id="headingdiv"><marquee width="100px">&lt; &lt; &lt; &lt; &lt;</marquee>You can request for Gas<marquee width="100px" direction="right">&gt; &gt; &gt; &gt; &gt;</marquee></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <br /><br />
    <table align="center" class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Consumer Name:</td>
            <td>
                <asp:TextBox ID="TxtCName" runat="server"  CssClass="txt" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Connection Type:</td>
            <td>
                <asp:DropDownList ID="DDLCType" runat="server" CssClass="txt" required="required">
                    <asp:ListItem Value="">..Select..</asp:ListItem>
                    <asp:ListItem>CNG</asp:ListItem>
                    <asp:ListItem>PNG</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Contact No. :</td>
            <td>
                <asp:TextBox ID="TxtContactNo" runat="server" CssClass="txt" required="required" TextMode="Number" ></asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtContactNo" ErrorMessage="Please enter only 10 digits!"  ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>
                <asp:TextBox ID="TxtAddress" runat="server" CssClass="txt" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Cylinder Weight:</td>
            <td>
                <asp:DropDownList ID="DDLCWeight" runat="server" CssClass="txt" required="required">
                    <asp:ListItem Value="">..Select..</asp:ListItem>
                    <asp:ListItem>5 kg</asp:ListItem>
                    <asp:ListItem>14 Kg</asp:ListItem>
                    <asp:ListItem>20 Kg</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Email ID:</td>
            <td>
                <asp:TextBox ID="TxtEmailID" runat="server" CssClass="txt" required="required" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" style="font-size: large; color: #FFFFFF; background-color: #009900" OnClick="BtnSubmit_Click" height="30px" Width="150px"/>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

