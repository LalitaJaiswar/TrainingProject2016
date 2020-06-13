<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerZone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="ConsumerReview.aspx.cs" Inherits="ConsumerZone_ConsumerReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <div id="headingdiv">Give Your Reviews</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <div style="width:75%; padding:10px 5% ; background-color:silver; border-radius:5px; margin:0px auto"><br />
        <asp:TextBox ID="TxtTopic" runat="server" Width="100%" Height="35px" Placeholder="Enter your Topic of Review" required="required" />
        <br /><br />
        <asp:TextBox ID="TxtMessage" runat="server" TextMode="MultiLine" Placeholder="Enter Review Message" Width="100%" Height="60px" Style="resize:none" required="required"/>
        <br /><br />
        <asp:Button ID="BtnPost" runat="server" Text="Post Now" ForeColor="white" BackColor="Green" Width="150px" Height="30px" OnClick="BtnPost_Click" />
        <br /><br />
        <asp:GridView ID="GVReview" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Reviewid" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Reviewid" HeaderText="Review ID" InsertVisible="False" ReadOnly="True" SortExpression="Reviewid" />
                <asp:BoundField DataField="Userid" HeaderText="User ID" SortExpression="Userid" />
                <asp:BoundField DataField="Topic" HeaderText="Topic of Review" SortExpression="Topic" />
                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                <asp:BoundField DataField="ReviewDT" HeaderText="Review Date" SortExpression="ReviewDT" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="green" Font-Bold="True" ForeColor="White" height="40px"/>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblReview] ORDER BY [Reviewid] DESC"></asp:SqlDataSource>
        </div>
</asp:Content>

