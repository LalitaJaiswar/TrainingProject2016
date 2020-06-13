<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 95%;
            font-size:18px;
            background:white;
            box-shadow:0px 0px 4px;
            border-radius:2px;
            margin:10px auto;
        }
        #registrationdiv {
            
        }
        .txtstyle 
        {
            height:27px;
            width:200px;
            margin-bottom:6px;
            margin-top:6px;
            padding-left:3px;
            border-radius:3px;
            border:1px solid #777;
        }
        .captchastyle 
        {
            height:32px;
            border:1px solid #7dc11e;
            margin-bottom:-13px;
            color:white;
        }
        .tdstyle 
        {
            width: 245px;
            height:40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="registrationdiv">
    <table align="center"  class="auto-style1" >
        <tr>
            <td style="font-size:25px;  height:40px; color:#c3f150; background:green; text-align:center" colspan="2">Register here...</td>
        </tr>
        
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td class="tdstyle">&nbsp; Select Connection Type:</td>
            <td class="tdstyle">
                <asp:DropDownList ID="DDLConnectionType" class="txtstyle" runat="server" Width="206px" Height="32px">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>CNG</asp:ListItem>
                    <asp:ListItem>PNG</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="tdstyle" >&nbsp; Enter Your Name:</td>
            <td>
                <asp:TextBox ID="TxtName" runat="server" class="txtstyle"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="TxtName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdstyle" >&nbsp; Select Your Gender:</td>
            <td class="tdstyle" >
                <asp:RadioButton ID="RbtnMale" runat="server" GroupName="Gender" Text="Male" />
                <asp:RadioButton ID="RbtnFemale" runat="server" GroupName="Gender" Text="Female" />
            </td>
        </tr>
        <tr>
            <td class="tdstyle" >&nbsp; Enter Your Mobile No.</td>
            <td>
                <asp:TextBox ID="TxtMobNo" runat="server" class="txtstyle" TextMode="Number"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtMobNo" ErrorMessage="Please enter only 10 digits!"  ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="tdstyle" >&nbsp; Enter Your Email ID:</td>
            <td>
                <asp:TextBox ID="TxtEmailId" runat="server" class="txtstyle"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmailId" ErrorMessage="Invalid Email ID!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td  class="tdstyle" >&nbsp; Postal Address:</td>
            <td>
                <asp:TextBox ID="TxtAddress" runat="server" class="txtstyle"  TextMode="MultiLine" Style="resize:none; width:198px;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td  class="tdstyle" >&nbsp; Profile Picture:</td>
            <td  class="tdstyle" >
                <asp:FileUpload ID="FUProfilePic" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="tdstyle" >&nbsp; Password:</td>
            <td>
                <asp:TextBox ID="TxtPassword" runat="server" class="txtstyle"  TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdstyle" >&nbsp; Confirm Password:</td>
            <td>
                <asp:TextBox ID="TxtConfirmPassword" runat="server" class="txtstyle"  TextMode="Password" Style="margin-bottom:12px;"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPassword" ControlToValidate="TxtConfirmPassword" ErrorMessage="Password not matched!" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            
            <td class="tdstyle" >&nbsp; Captcha Code:</td>
            <td class="tdstyle" >
                <asp:Image ID="ImgCaptcha" runat="server" Font-Size="X-Large"  Class="captchastyle" Width="101px"></asp:Image>
                <asp:Button ID="BtnRefresh"  runat="server" Text="Refresh" OnClick="BtnRefresh_Click" Height="34px" Width="101px" style="background:#3bf120; margin:-16px 0px 10px -3px; border:none;" CausesValidation="False"/>
           </td>
        </tr>
        <tr>
            <td class="tdstyle" >&nbsp; Enter Captcha Code:</td>
            <td>
                <asp:TextBox ID="TxtCaptcha" runat="server" class="txtstyle" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="BtnSubmit" runat="server" Text="Register" OnClick="BtnSubmit_Click" height="35px" Font-Size="15px" style="border:none; background:#3bf120; margin-bottom:20px; width:110px;"/>
            </td>
        </tr>
    </table>
        </div>
</asp:Content>

