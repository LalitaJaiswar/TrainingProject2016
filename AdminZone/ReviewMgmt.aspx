<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="ReviewMgmt.aspx.cs" Inherits="AdminZone_ReviewMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <div style="height:40px; width:800px; margin:0px auto; text-align:center; background:#a9cf9a; margin-bottom:10px; border-radius:3px 3px 0px 0px;">
        <h2>Manage Reviews of Consumers</h2>
    </div>
    <div style="overflow:scroll; width:800px; margin:0px auto">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Reviewid" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." GridLines="Vertical" Width="100%">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="Reviewid" HeaderText="Reviewid" ReadOnly="True" SortExpression="Reviewid" InsertVisible="False" />
        <asp:BoundField DataField="Userid" HeaderText="Userid" SortExpression="Userid" />
        <asp:BoundField DataField="Topic" HeaderText="Topic" SortExpression="Topic" />
        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
        <asp:BoundField DataField="ReviewDT" HeaderText="ReviewDT" SortExpression="ReviewDT" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="green" Font-Bold="True" ForeColor="White" Height="40px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
        </div>
<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/GGL_Database.accdb" DeleteCommand="DELETE FROM `TblReview` WHERE `Reviewid` = ?" InsertCommand="INSERT INTO `TblReview` (`Reviewid`, `Userid`, `Topic`, `Message`, `ReviewDT`) VALUES (?, ?, ?, ?, ?)" SelectCommand="SELECT `Reviewid`, `Userid`, `Topic`, `Message`, `ReviewDT` FROM `TblReview`" UpdateCommand="UPDATE `TblReview` SET `Userid` = ?, `Topic` = ?, `Message` = ?, `ReviewDT` = ? WHERE `Reviewid` = ?">
    <DeleteParameters>
        <asp:Parameter Name="Reviewid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Reviewid" Type="Int32" />
        <asp:Parameter Name="Userid" Type="String" />
        <asp:Parameter Name="Topic" Type="String" />
        <asp:Parameter Name="Message" Type="String" />
        <asp:Parameter Name="ReviewDT" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Userid" Type="String" />
        <asp:Parameter Name="Topic" Type="String" />
        <asp:Parameter Name="Message" Type="String" />
        <asp:Parameter Name="ReviewDT" Type="String" />
        <asp:Parameter Name="Reviewid" Type="Int32" />
    </UpdateParameters>
</asp:AccessDataSource>
</asp:Content>

