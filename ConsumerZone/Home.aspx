<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="ConsumerZone_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #headingdiv 
        {
        height:35px;
        width:903px;
        background:#dddddd;
        text-align:center;
        border-radius:2px;
        padding-top:5px;
        color:black;
        }
        #box 
        {
            height:578px;
            width:885px;
            background:white;
            border:1px solid #dddddd;
            padding:10px;
            margin:10px auto;
            padding:8px;
        }
        .row 
        {
            height:193px;
            width:886px;
            margin:0px auto;
        }
        .col 
        {
            height:180px;
            width:283px;
            float:left;
            color:white;
            font-size:20px;
            text-shadow:3px 3px 3px black;
            margin:5px;
            border:1px solid #dddddd;
            border-radius:2px;
            text-align:center;
        }
            .col:hover 
            {
                background:rgba(176,245,5,0.87);               
                color:navy;
                text-shadow:3px 3px 3px white;
            }
        .img1 
        {
            height:100px;
            width:100px;
        }
        .img2 
        {
            height:120px;
            width:100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <div id="headingdiv">Dashboard</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <hr style="margin:auto; Width:95%"/>
    <div id="box">
        <div class="row">
            <a href="RequestForGas.aspx"><div class="col" style="background:#ffac00"><br /><img src="../images/cngrequest.png" class="img1" /><br />Request for Gas</div></a>
            <a href="ConsumerReview.aspx"><div class="col" style="background:skyblue"><img  src="../images/review.gif" class="img2"/><br />Consumer's Review</div></a>
            <a href="BookingStatus.aspx"><div class="col" style="background:rgb(195, 248, 64)"><br /><img src="../images/gas-station-256.png" height="100" width="80" /><br />Booking Status</div></a>
       </div>
        <div class="row">
            <a href="Feedback.aspx"><div class="col" style="background:rgba(185, 64, 238, 0.61)"><img src="../images/feedback.png" height="140" width="130" /><br />Feedback</div></a>
            <a href="MyProfile.aspx"><div class="col" style="background:rgba(123, 239, 74, 0.54)"><br /><img src="../images/profile.png" class="img1"/><br />My Profile</div></a>
            <a href="ChangePassword.aspx"><div class="col" style="background:rgba(242, 137, 228, 0.8)"><img src="../images/changepass122.png" class="img2" /><br />Change Password</div></a>
       </div>
        <div class="row">
            <a href="Logout.aspx"><div class="col" style="background:rgba(54, 168, 5, 0.75)"><img src="../images/lpgout.png" height="130" width="100"/><br/>Logout</div></a>
            <a href="#"><div class="col" style="background:rgba(255, 133, 0, 0.71)"></div></a>
            <a href="#"><div class="col" style="background:rgba(0, 38, 255, 0.58)"></div></a>
       </div>
    </div>
</asp:Content>

