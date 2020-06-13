<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="ConsumerZone_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 87%;
            border:1px solid #4c7e52;
            padding:40px 0px 40px 20px;
            margin:0px auto;
            border-radius:2px;
            margin-bottom:20px;
            background:white;
            
        }
        #profilediv 
        {
            height:60px;
            width:675px;
            border:1px solid #dddddd;
            padding:10px;
            margin:0px auto;
            margin-top:20px;
            margin-bottom:5px;
            background:rgba(2, 81, 12, 0.63);
            border-radius:10px 10px 0px 0px;
        }
        .trstyle 
        {
            font-size:18px;
            height:50px;

        }
        .auto-style2 {
            font-size: 20px;
            height: 26px;
        }
        #headingdiv 
        {
        width:800px;
        height:35px;
        margin:auto;
        background:#e4efe2;
        text-align:center;
        border-radius:2px;
        padding-top:5px;
        color:green;
        }
        .txtstyle 
        {
            width:165px;
            height:30px;
            background:white;
            font-size:14px;
            border:1px solid #dddddd;
            border-radius:2px;
            padding-left:5px;
        }
        .btnstyle 
        {
            height:30px;
            width:170px;
            background:orange;
            border:none;
            border-radius:2px;
            font-size:17px;
        }
        center 
        {
            margin-top:-50px;
            font-size:30px;
            font-family:'Monotype Corsiva';
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <div id="headingdiv"> Manage Your Profile</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
   <div style="width:800px; height:auto; background:#cccccc; border:1px solid #dddddd; margin:auto;">
       <div id="profilediv"><img src="../images/user_default.png"  height="60" width="60"/>
           <center>My Profile</center>
       </div>
     <table align="center" class="auto-style1"> 
        <tr>
            <td class="trstyle">Name:</td>
            <td class="trstyle">
                <asp:TextBox ID="TxtName" runat="server" CssClass="txtstyle"></asp:TextBox>
            </td>
            <td class="trstyle">Profile Pic:</td>
            <td rowspan="2">
                <asp:Image ID="ImgUserPic" runat="server" Height="100px" Width="100px" BorderColor="Orange" BorderStyle="Solid" BorderWidth="1px" />
            </td>
        </tr>
        
        <tr>
            <td class="trstyle">Gender:</td>
            <td class="trstyle">
                <asp:RadioButton ID="RbtnMale" runat="server" GroupName="Gender" Text="Male" />
                <asp:RadioButton ID="RbtnFemale" runat="server" GroupName="Gender" Text="Female" />
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        
        <tr>
            <td class="trstyle">Connection Type:</td>
            <td class="trstyle">
                <asp:TextBox ID="TxtConnectionType" runat="server" CssClass="txtstyle"></asp:TextBox>
            </td>
            <td class="trstyle">
                Change Pic:</td>
            <td class="trstyle">
                <asp:FileUpload ID="FUProfilePic" runat="server" />
            </td>
        </tr>
        
        <tr>
            <td class="trstyle">Mobile No.:</td>
            <td class="trstyle">
                <asp:TextBox ID="TxtMobNo" runat="server" CssClass="txtstyle"></asp:TextBox>
            </td>
            <td class="trstyle">Email ID:</td>
            <td class="trstyle">
                <asp:Label ID="LblEmailId" runat="server"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td class="trstyle">Address:</td>
            <td class="trstyle">
                <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine" CssClass="txtstyle" Style="resize:none"></asp:TextBox>
            </td>
            <td class="trstyle">Posted Date:</td>
            <td class="trstyle">
                <asp:Label ID="LblRegdt" runat="server"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">
                <asp:Button ID="BtnEdit" runat="server" Text="Edit" OnClick="BtnEdit_Click" CssClass="btnstyle"/>
            </td>
            <td class="trstyle" colspan="2">
                <asp:Button ID="BtnUpdate" runat="server"  Text="Update" OnClick="BtnUpdate_Click" CssClass="btnstyle"/>
            </td>
        </tr>
     </table>
  </div>
</asp:Content>

