<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="NotificationMgnt.aspx.cs" Inherits="AdminZone_NotificationMgnt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #box 
        {
            width:320px;
            margin:20px auto;
            height:auto;
            padding:25px;
            border:5px double green;
        }
        #notiheading 
        {
            height:40px;
            width:380px;
            border:1px solid green;
            margin:10px auto;
            font-size: x-large; 
            font-weight: bold; 
            text-align: center;
            border-radius:3px 3px 0px 0px;
            padding-top:10px;
            color:green;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <div id="notiheading">Add Notifications here</div>
    <div id="box">
        <asp:TextBox ID="TxtNoti" runat="server" TextMode="MultiLine" height="50px" width="300px" Placeholder="Enter Notificafication..." Style="resize:none"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNoti" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button ID="BtnAdd" runat="server" Text="Add Notification" Width="300px" Height="40px" Backcolor="green" ForeColor="White" OnClick="BtnAdd_Click"/>
    </div>
    <br /><br />
    <div style="height:auto; margin:0px auto; width:95%; background:pink; border:1px solid green; overflow:scroll">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="NID" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="100%" PageSize="8">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="NID" HeaderText="Notification ID" InsertVisible="False" ReadOnly="True" SortExpression="NID" />
            <asp:BoundField DataField="NMessage" HeaderText="Notification Message" SortExpression="NMessage" />
            <asp:BoundField DataField="NDT" HeaderText="Notification Date" SortExpression="NDT" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TblNotification] WHERE [NID] = ? AND (([NMessage] = ?) OR ([NMessage] IS NULL AND ? IS NULL)) AND (([NDT] = ?) OR ([NDT] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [TblNotification] ([NID], [NMessage], [NDT]) VALUES (?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblNotification] ORDER BY [NID] DESC" UpdateCommand="UPDATE [TblNotification] SET [NMessage] = ?, [NDT] = ? WHERE [NID] = ? AND (([NMessage] = ?) OR ([NMessage] IS NULL AND ? IS NULL)) AND (([NDT] = ?) OR ([NDT] IS NULL AND ? IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_NID" Type="Int32" />
        <asp:Parameter Name="original_NMessage" Type="String" />
        <asp:Parameter Name="original_NMessage" Type="String" />
        <asp:Parameter Name="original_NDT" Type="String" />
        <asp:Parameter Name="original_NDT" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="NID" Type="Int32" />
        <asp:Parameter Name="NMessage" Type="String" />
        <asp:Parameter Name="NDT" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NMessage" Type="String" />
        <asp:Parameter Name="NDT" Type="String" />
        <asp:Parameter Name="original_NID" Type="Int32" />
        <asp:Parameter Name="original_NMessage" Type="String" />
        <asp:Parameter Name="original_NMessage" Type="String" />
        <asp:Parameter Name="original_NDT" Type="String" />
        <asp:Parameter Name="original_NDT" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

