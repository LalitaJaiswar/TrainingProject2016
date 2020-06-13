<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/DefaultStyle.css" rel="stylesheet" />
    <script>
        function Enquiry()
        {
            var dv = document.getElementById("box");
            var lnk1 = document.getElementById("lnk");
            var a = dv.style.display;
            if (a == "none")
            {
                dv.style.display = "block";                                                                                                                                                                       
                lnk1.style.background = "green";
            }
            else
            {
                dv.style.display = "none";
                lnk1.style.background = "red";
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="box">
      <h1 style="color:green"><center>Enquiry Form</center></h1><br />
      <asp:TextBox ID="TxtName" runat="server" PlaceHolder="Enter Your Name..."  CssClass="txt" required></asp:TextBox>
      <br /><br />
      <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email" Placeholder="Enter Your Email ID.."  CssClass="txt" required></asp:TextBox>
      <br /><br />
      <asp:TextBox  ID="TxtMobNo" runat="server" TextMode="Number" Placeholder="Enter Your Mobile number..."  CssClass="txt" required></asp:TextBox>
      <br /><br />
      <asp:TextBox ID="TxtMessage" runat="server" TextMode="MultiLine" Placeholder="Enter Your Message..."  CssClass="txta" required></asp:TextBox>
      <br /><br />
      <asp:Button ID="BtnEnquiry" runat="server" Text="Submit"  CssClass="btn" Onclick="BtnEnquiry_Click"/>
      </div> 
    <a href="#" id="lnk" onclick="Enquiry()">Enquiry</a> 
    <div id="mcontent">
        <h2 style="color:green; text-shadow:0px 5px 5px #aaaaaa; text-align:center; font-family:'Agency FB'; font-weight:bold">Welcome to Green Gas Limited</h2><hr style="height:3px; background:#ffd800; width:765px; border:none; margin-top:5px "/>
        <div id="cngpng">
            Green gas Limited(GGL) is a join venture of GAIL and Indian Oil Corporation Limited(IOCL). It has incorporated for the implementation
            of City Gas Project for supply of Piped Natural Gas(PNG) to domestic,commercial and industrial customers. There are large number of commecial/domestic/industrial
            CNG gas suppliers offering a suite of commercial/domestic/industrial services tailored to the national and local needs of the customers. These marketplaces have thousands
            of commercial/domestic/industrial branches for sales of CNG gas. Their purpose is to attract customers and give them better way of booking and delivery.<br /><br />
        </div>
        <div id="mpart">
            <div id="dleft">
                <h3>What is CNG(Compressed Natural Gas)...</h3>
                Compressed natural gas (CNG) (methane stored at high pressure) is afuel which can be used in place of gasoline (petrol), Diesel fuel andpropane/LPG. CNG combustion produces fewer 
                undesirable gases than thefuels mentioned above. It is safer than other fuels in the event of a spill,because natural gas is lighter than air and disperses quickly when released.<br />
                CNG may be found above oil deposits, or may be collected from landfillsor wastewater treatment plants where it is known as biogas.CNG is made by compressing natural gas (which is mainly composed of
               methane, CH4), to less than 1 percent of the volume it occupies at standardatmospheric pressure. It is stored and distributed in hard containers at a pressure of 20–25 MPa (2,900–3,600 psi), usually in cylindrical or
               spherical shapes.<br /><br />
                <h3>What is PNG(Piped Natural Gas)...</h3>
                Piped Natural gas (PNG) is used for Domestic, Commercial and Industrial Consumption. PNG has several distinctions to its credit-of being a pollution free fuel, economical and safer fuel being few of them.
            </div>
            <div id="dright">
                <div id="dup">
                    <h3>Upcoming CNG Stations...</h3>Lucknow: M/s Anurag FS- Raibarelly Road, Mother Station- Vrindavan Yojna -6, Mother Station- Vrindavan Yojna-18, M/s SS Filling Stn- Kanpur Road, M/s Buddeshwar FS- Mohan Road,
                 M/s Kalawati FS-Sultanpur Road Agra: Mother Station- Kalindi Vihar, M/s Brij Auto- NH-2.....<br /><a href="AreaandInfrastructure.aspx">Read More</a>
                </div>
                <a href="Benfits.aspx"><img id="ddown" src="images/ecofriendly.jpg" height="265px" width="217px" /></a>
            </div>
        </div>
    </div>
</asp:Content>

