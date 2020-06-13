<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="ImageGallery.aspx.cs" Inherits="ImageGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function NextPrevious()
        {
            var dv1 = document.getElementById("box");
            var dv2 = document.getElementById("box1");
            var a = dv1.style.display;
            var b = dv2.style.display;
            var lnk1 = document.getElementById("lnk");
            if (a == "block" && b == "none")
            {
                dv1.style.display = "none";
                dv2.style.display = "block";
                lnk1.style.background = "green"
                lnk1.innerHTML = "Next";
            }
            else
            {
                dv1.style.display = "block";
                dv2.style.display = "none";
                lnk1.style.background = "red";
                lnk1.innerHTML = "Previous";
            }
        }
    </script>
    <style>
        #box 
        {
            height:590px;
            width:680px;
            margin:0px auto;
            border:1px solid #cccccc;
            padding:10px;
            background:#cccccc;
        }
        #box1 
        {
         height:590px;
         width:680px;
         margin:0px auto;
         border:1px solid #cccccc;
         padding:10px;
         background:rgba(34, 92, 9, 0.54);
         display:none;
        }
        .row 
        {
            height:180px;
            width:645px;
            margin:0px auto;
            padding:10px 0px 5px 10px;
        }
        .col 
        {
            height:178px;
            width:308px;
            float:left;
            border:2px solid green;
            margin-right:10px;
            border-radius:5px;

        }
        .imgG 
        {
            height:178px;
            width:308px;
            border-radius:5px;
        }
        #lnk 
        {
            padding:10px;
            background:green;
            color:white;
            font-weight:bold;
            position:relative;
            left:650px;
            margin-bottom:25px;
        }
            a 
            {
                text-decoration:none;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <center><h2>Image Gallery</h2></center>
    <div id="box">
        <div class="row">
            <div class="col"><img src="images/1.jpg" class="imgG" /></div>
            <div class="col"><img src="images/2.jpg" class="imgG" /></div>
        </div>
        <div class="row">
            <div class="col"><img src="images/3.jpg" class="imgG" /></div>
            <div class="col"><img src="images/4.jpg" class="imgG" /></div>

        </div>
        <div class="row">
            <div class="col"><img src="images/boyplantsmal2.JPG" class="imgG" /></div>
            <div class="col"><img src="images/5.jpg" class="imgG" /></div>

        </div>
    </div>
    <div id="box1">
        <div class="row">
            <div class="col"><img src="images/6.jpg" class="imgG" /></div>
            <div class="col"><img src="images/8.jpg" class="imgG" /></div>
        </div>
        <div class="row">
            <div class="col"><img src="images/7.jpg" class="imgG" /></div>
            <div class="col"><img src="images/LKO_S5.jpg" class="imgG" /></div>

        </div>
        <div class="row">
            <div class="col"><img src="images/LKO_S4.jpg" class="imgG" /></div>
            <div class="col"><img src="SliderImages/GGL_S2.jpg" class="imgG" /></div>

        </div>
    </div>
    <br />
    <a href="#" id="lnk" onclick="NextPrevious()">Next</a>
    <br /><br />
</asp:Content>

