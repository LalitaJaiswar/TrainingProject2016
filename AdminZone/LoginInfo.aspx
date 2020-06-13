<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="LoginInfo.aspx.cs" Inherits="AdminZone_LoginInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <div style="height:40px; width:90%; margin:0px auto; text-align:center; background:green; color:white;  margin-bottom:10px; border-radius:3px 3px 0px 0px;">
        <h2>Consumers Login Info</h2>
    </div>
    <div style="width:90%;  margin:0px auto; overflow:scroll">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="userid" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." GridLines="Vertical" Width="100%" PageSize="15">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="userid" HeaderText="User Id" ReadOnly="True" SortExpression="userid" />
        <asp:BoundField DataField="passwd" HeaderText="Password" SortExpression="passwd" />
        <asp:BoundField DataField="usertype" HeaderText="User Type" SortExpression="usertype" />
        <asp:CheckBoxField DataField="status" HeaderText="Status" SortExpression="status" />
        <asp:BoundField DataField="lcount" HeaderText="Login Count" SortExpression="lcount" />
        <asp:BoundField DataField="lastlogin" HeaderText="Last Login" SortExpression="lastlogin" />
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
        </div>
<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/GGL_Database.accdb" DeleteCommand="DELETE FROM `Login` WHERE `userid` = ?" InsertCommand="INSERT INTO `Login` (`userid`, `passwd`, `usertype`, `status`, `lcount`, `lastlogin`) VALUES (?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `userid`, `passwd`, `usertype`, `status`, `lcount`, `lastlogin` FROM `Login`" UpdateCommand="UPDATE `Login` SET `passwd` = ?, `usertype` = ?, `status` = ?, `lcount` = ?, `lastlogin` = ? WHERE `userid` = ?">
    <DeleteParameters>
        <asp:Parameter Name="userid" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="userid" Type="String" />
        <asp:Parameter Name="passwd" Type="String" />
        <asp:Parameter Name="usertype" Type="String" />
        <asp:Parameter Name="status" Type="Boolean" />
        <asp:Parameter Name="lcount" Type="Int32" />
        <asp:Parameter Name="lastlogin" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="passwd" Type="String" />
        <asp:Parameter Name="usertype" Type="String" />
        <asp:Parameter Name="status" Type="Boolean" />
        <asp:Parameter Name="lcount" Type="Int32" />
        <asp:Parameter Name="lastlogin" Type="String" />
        <asp:Parameter Name="userid" Type="String" />
    </UpdateParameters>
</asp:AccessDataSource>
</asp:Content>

