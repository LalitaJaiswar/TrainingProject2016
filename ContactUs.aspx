<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #box 
        {
            height:340px;
            width:725px;
            background:#dddddd;
            border:1px double skyblue;
            margin:0px auto;
            padding:20px;
            border-radius:5px;
        }
        
        #leftp 
        {
            height:340px;
            width:330px;
            float:left;           
            margin-right:20px;
            border:1px solid green;
            padding-left:10px;
            padding-right:10px;
            background:rgba(255, 255, 255, 0.97);
            border-radius:5px;
        }
        #right 
        {
            height:340px;
            width:350px;
            float:left;
            border:1px solid green;
            background:rgba(255, 255, 255, 0.97);
            border-radius:5px;
        }
        .span1 
        {
            font-size:21px;
            color:green;
            font-weight:bold;
        }
        .span2 
        {
            font-size:17px;
        }
        #imgdiv 
        {
            height:180px;
            width:728px;
            margin:0px auto;
            padding:20px 0px 20px 35px;
            border:1px solid #cccccc;
        }
        .col 
        {
            height:176px;
            width:316px;
            background:orange;
            float:left;
            margin-right:40px;
            border:2px solid black;
        }
        h2 {
    
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br />
    <div style="height:35px; width:765px; margin:0px auto; text-align:center;  margin-bottom:10px; background:#3db90b;  font-size:21px; border-radius:3px 3px 0px 0px; color:white; font-family:'Monotype Corsiva'; padding-top:5px;">
        <h2>Contact Us</h2>
    </div>
    <div id="box">
        
        <div id="leftp">
            <h2 style="text-align:center">Head Office</h2><br /><hr />
            <span class="span1">Registered Office:</span><br />
            <span class="span2" >Green Gas Limited Fortuna Towers, 2nd Floor, 10, Rana Pratap Marg Lucknow-226001</span><br />
            <span class="span2">Telephone:</span>0522-4088530<br />
            <span class="span2">Fax:</span>4088529<br /><br />
            <span class="span1">Agra Office:</span><br />
            <span class="span2">Green Gas Limited 2nd Floor Jeevan Prakash Building,Snajay Place,Agra-282002(U.P.)</span><br />
            <span class="span2">Telephone:</span>0562-4061634.
        </div>
        <div id="right">
            <h2 style="text-align:center">Google Map</h2><br />
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56969.50071540194!2d80.94188251366693!3d26.821059790647812!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399bfd0e0988159b%3A0x48696a36e61daf4c!2sGREEN+GAS+LIMITED!5e0!3m2!1sen!2sin!4v1494174049050" width="345px" height="287px" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </div><br />
    <div id="imgdiv">
    <img src="SliderImages/taj.jpeg" class="col" height="" />
        <img src="SliderImages/GGL_S7.jpg" class="col" />
    </div>
</asp:Content>

