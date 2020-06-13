<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="ImgGallery.aspx.cs" Inherits="ImgGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        var arr = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "boyplantsmal2.JPG", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "LKO_S5.jpg", "LKO_S4.jpg"];
        var i = 0;
        function chpic()
        {
            var lnk = document.getElementById("hlnk");
            lnk.innerHTML = 'Next';
            var img1 = document.getElementById("pic");
            img1.src = "images/" + arr[i];
            i++;
            if (i == arr.length)
            {
                lnk.innerHTML = 'Previous';
                i = 0;
            }
        }
    </script>
    <style>
        #imgdiv {
        height:550px;
        width:90%;
        border:2px solid green;
        margin:20px auto;
        }
        #pic {
        height:400px;
        width:90%;
        border:5px double #333;
        border-radius:3px;
        margin:10px;
        }
        #hlnk {
        background:green;
        padding:10px;
        color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="imgdiv">
        <h2 style="background:green; color:white; height:40px; text-align:center">Image Gallery...</h2><br />
        <center>
        <img id="pic" src="SliderImages/taj.jpeg"/><br />
            <a href="#" id="hlnk" onclick="chpic()">Next</a>
            </center>
    </div>
</asp:Content>

