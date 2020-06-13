<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="BookingManagement.aspx.cs" Inherits="AdminZone_BookingManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center><h2><u>Manage Bookings</u></h2></center><br />
    <div style="width:95%; overflow:scroll; margin:0px auto">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%" PageSize="8">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="CID" HeaderText="Consumer ID" InsertVisible="False" ReadOnly="True" SortExpression="CID" />
        <asp:BoundField DataField="CName" HeaderText="Consumer Name" SortExpression="CName" />
        <asp:BoundField DataField="ConType" HeaderText="Connection Type" SortExpression="ConType" />
        <asp:BoundField DataField="ContactNo" HeaderText="Contact No" SortExpression="ContactNo" />
        <asp:BoundField DataField="EmailID" HeaderText="Email ID" SortExpression="EmailID" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="CWeight" HeaderText="Cylinder Weight" SortExpression="CWeight" />
        <asp:BoundField DataField="BookingDate" HeaderText="Booking Date" SortExpression="BookingDate" />
        <asp:BoundField DataField="CDT" HeaderText="CDT" SortExpression="CDT" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="green" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
        </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [TblBooking] WHERE [CID] = ? AND (([CName] = ?) OR ([CName] IS NULL AND ? IS NULL)) AND (([ConType] = ?) OR ([ConType] IS NULL AND ? IS NULL)) AND (([ContactNo] = ?) OR ([ContactNo] IS NULL AND ? IS NULL)) AND (([EmailID] = ?) OR ([EmailID] IS NULL AND ? IS NULL)) AND (([Address] = ?) OR ([Address] IS NULL AND ? IS NULL)) AND (([CWeight] = ?) OR ([CWeight] IS NULL AND ? IS NULL)) AND (([BookingDate] = ?) OR ([BookingDate] IS NULL AND ? IS NULL)) AND (([CDT] = ?) OR ([CDT] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [TblBooking] ([CID], [CName], [ConType], [ContactNo], [EmailID], [Address], [CWeight], [BookingDate], [CDT]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [TblBooking]" UpdateCommand="UPDATE [TblBooking] SET [CName] = ?, [ConType] = ?, [ContactNo] = ?, [EmailID] = ?, [Address] = ?, [CWeight] = ?, [BookingDate] = ?, [CDT] = ? WHERE [CID] = ? AND (([CName] = ?) OR ([CName] IS NULL AND ? IS NULL)) AND (([ConType] = ?) OR ([ConType] IS NULL AND ? IS NULL)) AND (([ContactNo] = ?) OR ([ContactNo] IS NULL AND ? IS NULL)) AND (([EmailID] = ?) OR ([EmailID] IS NULL AND ? IS NULL)) AND (([Address] = ?) OR ([Address] IS NULL AND ? IS NULL)) AND (([CWeight] = ?) OR ([CWeight] IS NULL AND ? IS NULL)) AND (([BookingDate] = ?) OR ([BookingDate] IS NULL AND ? IS NULL)) AND (([CDT] = ?) OR ([CDT] IS NULL AND ? IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_CID" Type="Int32" />
        <asp:Parameter Name="original_CName" Type="String" />
        <asp:Parameter Name="original_CName" Type="String" />
        <asp:Parameter Name="original_ConType" Type="String" />
        <asp:Parameter Name="original_ConType" Type="String" />
        <asp:Parameter Name="original_ContactNo" Type="String" />
        <asp:Parameter Name="original_ContactNo" Type="String" />
        <asp:Parameter Name="original_EmailID" Type="String" />
        <asp:Parameter Name="original_EmailID" Type="String" />
        <asp:Parameter Name="original_Address" Type="String" />
        <asp:Parameter Name="original_Address" Type="String" />
        <asp:Parameter Name="original_CWeight" Type="String" />
        <asp:Parameter Name="original_CWeight" Type="String" />
        <asp:Parameter Name="original_BookingDate" Type="String" />
        <asp:Parameter Name="original_BookingDate" Type="String" />
        <asp:Parameter Name="original_CDT" Type="String" />
        <asp:Parameter Name="original_CDT" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="CID" Type="Int32" />
        <asp:Parameter Name="CName" Type="String" />
        <asp:Parameter Name="ConType" Type="String" />
        <asp:Parameter Name="ContactNo" Type="String" />
        <asp:Parameter Name="EmailID" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="CWeight" Type="String" />
        <asp:Parameter Name="BookingDate" Type="String" />
        <asp:Parameter Name="CDT" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="CName" Type="String" />
        <asp:Parameter Name="ConType" Type="String" />
        <asp:Parameter Name="ContactNo" Type="String" />
        <asp:Parameter Name="EmailID" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="CWeight" Type="String" />
        <asp:Parameter Name="BookingDate" Type="String" />
        <asp:Parameter Name="CDT" Type="String" />
        <asp:Parameter Name="original_CID" Type="Int32" />
        <asp:Parameter Name="original_CName" Type="String" />
        <asp:Parameter Name="original_CName" Type="String" />
        <asp:Parameter Name="original_ConType" Type="String" />
        <asp:Parameter Name="original_ConType" Type="String" />
        <asp:Parameter Name="original_ContactNo" Type="String" />
        <asp:Parameter Name="original_ContactNo" Type="String" />
        <asp:Parameter Name="original_EmailID" Type="String" />
        <asp:Parameter Name="original_EmailID" Type="String" />
        <asp:Parameter Name="original_Address" Type="String" />
        <asp:Parameter Name="original_Address" Type="String" />
        <asp:Parameter Name="original_CWeight" Type="String" />
        <asp:Parameter Name="original_CWeight" Type="String" />
        <asp:Parameter Name="original_BookingDate" Type="String" />
        <asp:Parameter Name="original_BookingDate" Type="String" />
        <asp:Parameter Name="original_CDT" Type="String" />
        <asp:Parameter Name="original_CDT" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

