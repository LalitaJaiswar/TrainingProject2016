<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="AdminZone_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         #box 
        {
            height:auto;
            width:790px;
            margin:0px auto;
        }
        .row 
        {
         height:157px;
         width:780px;
         margin:10px;
        }
        .col 
        {
            height:105px;
            width:183px;
            float:left;
            margin-right:10px;
            border:1px solid green;
            padding-top:50px;
            font-size:24px;
            text-align:center;
            border-radius:3px;
            background:green;
            color:white;
            /*text-shadow:3px 3px 3px white;*/
            box-shadow:0px 0px 20px #fff inset;
            font-weight:bold;
        }
            .col:hover 
            {
                background:#c6ed25;
                color:green;
            }
    </style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <div >
        <br />
    <div style="width:790px; height:38px; margin:0px auto; text-align:center; font-size:28px; border-bottom:2px solid #fff;  color:green; font-weight:bold; text-shadow:0px 0px 10px white">Dashboard</div><br />
    <div id="box">
        <div class="row" style="margin-top:10px;">
            <a href="UserManagement.aspx"><div class="col">Consumer Management</div></a>
            <a href="ReviewMgmt.aspx"><div class="col">Review Management</div></a>
            <a href="BookingManagement.aspx"><div class="col">Booking Management</div></a>
            <a href="BillGeneration.aspx"><div class="col">Bill<br /> Generation</div></a>
        </div>
        <div class="row">
            <a href="LoginInfo.aspx"><div class="col" >Login Info</div></a>
            <a href="EnquiryMgmt.aspx"><div class="col"  >Enquiry Management</div></a>
            <a href="FeedbackMgmt.aspx"><div class="col">Feedback Management</div></a>
            <a href="SendSMS.aspx"><div class="col">Send SMS</div></a>
            
        </div>
            <div class="row">
            <a href="NotificationMgnt.aspx"><div class="col">Add<br />Notifications</div></a>
            <a href="ChangePassword.aspx"><div class="col">Change<br /> Password</div></a>
            <a href="Logout.aspx"><div class="col">Click to<br />Logout</div></a>
            <a href="#"><div class="col"></div></a>
            </div>
        </div>
    </div>  
</asp:Content>

