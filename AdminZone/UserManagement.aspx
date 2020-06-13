<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="UserManagement.aspx.cs" Inherits="AdminZone_UserManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content><asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div style="height:40px; width:800px; margin:0px auto; text-align:center; background:#a9cf9a; margin-bottom:10px; border-radius:3px 3px 0px 0px;">
        <h2>Manage Consumers</h2>
    </div>
    <div style="overflow:scroll; width:800px; margin:0px auto;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="emailid" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="100%" PageSize="4" AllowPaging="True">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="connectiontype" HeaderText="Connection Type" SortExpression="connectiontype" />
            <asp:BoundField DataField="uname" HeaderText="User Name" SortExpression="uname" />
            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
            <asp:BoundField DataField="mobileno" HeaderText="Mobile No" SortExpression="mobileno" />
            <asp:BoundField DataField="emailid" HeaderText="Email ID" ReadOnly="True" SortExpression="emailid" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:ImageField DataImageUrlField="profilepic" DataImageUrlFormatString="~/ProfilePic/{0}" HeaderText="Profile Pic" ControlStyle-Height="100px" ControlStyle-Width="100px">
<ControlStyle Height="100px" Width="100px"></ControlStyle>
            </asp:ImageField>         
            <asp:BoundField DataField="regdt" HeaderText="Registration Date" SortExpression="regdt" />
            <asp:HyperLinkField DataNavigateUrlFields="emailid" DataNavigateUrlFormatString="DeleteUser.aspx?emailid={0}" HeaderText="Dalete" Text="Delete" />
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
 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
    </div>
</asp:Content>

