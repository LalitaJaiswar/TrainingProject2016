<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="AreaandInfrastructure1.aspx.cs" Inherits="AreaandInfrastructure1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 90%;
            border-spacing:0px;
            margin:0px auto;
            font-size:16px;
            border:1px solid #dddddd;
            color:gray;
        }
       .trstyle 
        {
            height:35px;
            background:rgba(15, 146, 32, 0.66);
            font-size:20px;
            color:white;
        }
        #heading 
        {
            height:40px;
            width:90%;
            border:1px solid #dddddd;
            margin:0px auto;
            text-align:center;
            font-size:24px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div id="heading">CNG Outlet Agra</div><br />
    <table align="center" class="auto-style1" style="border-width:thin" border="1" bordercolor="#dddddd">
        <tr class="trstyle">
            <td colspan="3" style="font-weight: bold; text-align: center">CNG Outlet In Agra</td>
        </tr>
        <tr class="trstyle">
            <td>Location</td>
            <td>Address</td>
            <td>Type of Station</td>
        </tr>
        <tr>
            <td>Transport Nagar</td>
            <td><span>ISBT Compound, Transport Nagar, Agra</span></td>
            <td><span>Mother Station</span></td>
        </tr>
        <tr>
            <td>Taj Nagri</td>
            <td><span>Sector B-1, Taj Nagri, Phase -II Agra</span></td>
            <td><span>Mother Station</span></td>
        </tr>
        <tr>
            <td>Lohamandi</td>
            <td><span>Bhagwati Filling Station, Lohamandi, Agra</span></td>
            <td><span>Daughter Booster Station (DBS)</span></td>
        </tr>
        <tr>
            <td><span>Khwaja ki Sarai</span></td>
            <td><span>Modern Service Station, Nr. Edgah, Agra</span></td>
            <td><span>Daughter Booster Station (DBS)</span></td>
        </tr>
        <tr>
            <td>Sikandra</td>
            <td><span>Vyom Premium Fuel 4235/5, Mauja-Sikandra, Bahistabaad, Sikandra, NH-2 Agra</span></td>
            <td><span>On-Line Station</span></td>
        </tr>
        <tr>
            <td>Water works Chauraha</td>
            <td><span>Yamuna Automobile Belanganj, Near Water works, Jeoni Mandi Agra</span></td>
            <td><span>On-Line Station</span></td>
        </tr>
        </table>
    <br/><br /><br />

    <table align="center" class="auto-style1" style="border-width:thin" border="1" bordercolor="#dddddd">
        <tr>
            <td colspan="3" class="trstyle" style="font-weight: bold; text-align: center">Upcoming CNG station in Agra</td>
        </tr>
        <tr class="trstyle">
            <td>Location</td>
            <td>Address</td>
            <td>Type of Station</td>
        </tr>
        <tr>
            <td><span>Kalindi Vihar</span></td>
            <td><span>Kalindi Vihar</span></td>
            <td>Mother Station</td>
        </tr>
        <tr>
            <td><span>Metro Filling Station</span></td>
            <td><span>Metro Filling Station, Fatehabad Road</span></td>
            <td>Daughter Booster Station</td>
        </tr>
        <tr>
            <td><span>Bhagwan Filling Station</span></td>
            <td><span>Bhagwan Filling Station, Etmadpur</span></td>
            <td>Daughter Booster Station</td>
        </tr>
        </table>

</asp:Content>

