<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="EnquiryMgmt.aspx.cs" Inherits="AdminZone_EnquiryMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br /><br />
    <div style="height:40px; width:800px; margin:0px auto; text-align:center;  margin-bottom:10px; border-radius:3px 3px 0px 0px;">
        <h2><u>Enquiry Management</u></h2>
    </div>
       <div style="overflow:scroll; width:800px; margin:0px auto;">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="EId" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="100%" PageSize="12">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" HeaderText="Delete Enquiry" />
                        <asp:BoundField DataField="EId" HeaderText="Enquiry ID" InsertVisible="False" ReadOnly="True" SortExpression="EId" />
                        <asp:BoundField DataField="Uname" HeaderText="User Name" SortExpression="Uname" />
                        <asp:BoundField DataField="EmailId" HeaderText="Email Id" SortExpression="EmailId" />
                        <asp:BoundField DataField="MobNo" HeaderText="Mobile No" SortExpression="MobNo" />
                        <asp:BoundField DataField="E_Msg" HeaderText="Enquiry Message" SortExpression="E_Msg" />
                        <asp:BoundField DataField="EDT" HeaderText="Enqiry Date" SortExpression="EDT" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TblEnquiry] WHERE [EId] = ? AND (([Uname] = ?) OR ([Uname] IS NULL AND ? IS NULL)) AND (([EmailId] = ?) OR ([EmailId] IS NULL AND ? IS NULL)) AND (([MobNo] = ?) OR ([MobNo] IS NULL AND ? IS NULL)) AND (([E_Msg] = ?) OR ([E_Msg] IS NULL AND ? IS NULL)) AND (([EDT] = ?) OR ([EDT] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [TblEnquiry] ([EId], [Uname], [EmailId], [MobNo], [E_Msg], [EDT]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblEnquiry] ORDER BY [EId] DESC" UpdateCommand="UPDATE [TblEnquiry] SET [Uname] = ?, [EmailId] = ?, [MobNo] = ?, [E_Msg] = ?, [EDT] = ? WHERE [EId] = ? AND (([Uname] = ?) OR ([Uname] IS NULL AND ? IS NULL)) AND (([EmailId] = ?) OR ([EmailId] IS NULL AND ? IS NULL)) AND (([MobNo] = ?) OR ([MobNo] IS NULL AND ? IS NULL)) AND (([E_Msg] = ?) OR ([E_Msg] IS NULL AND ? IS NULL)) AND (([EDT] = ?) OR ([EDT] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_EId" Type="Int32" />
                        <asp:Parameter Name="original_Uname" Type="String" />
                        <asp:Parameter Name="original_Uname" Type="String" />
                        <asp:Parameter Name="original_EmailId" Type="String" />
                        <asp:Parameter Name="original_EmailId" Type="String" />
                        <asp:Parameter Name="original_MobNo" Type="String" />
                        <asp:Parameter Name="original_MobNo" Type="String" />
                        <asp:Parameter Name="original_E_Msg" Type="String" />
                        <asp:Parameter Name="original_E_Msg" Type="String" />
                        <asp:Parameter Name="original_EDT" Type="String" />
                        <asp:Parameter Name="original_EDT" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="EId" Type="Int32" />
                        <asp:Parameter Name="Uname" Type="String" />
                        <asp:Parameter Name="EmailId" Type="String" />
                        <asp:Parameter Name="MobNo" Type="String" />
                        <asp:Parameter Name="E_Msg" Type="String" />
                        <asp:Parameter Name="EDT" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Uname" Type="String" />
                        <asp:Parameter Name="EmailId" Type="String" />
                        <asp:Parameter Name="MobNo" Type="String" />
                        <asp:Parameter Name="E_Msg" Type="String" />
                        <asp:Parameter Name="EDT" Type="String" />
                        <asp:Parameter Name="original_EId" Type="Int32" />
                        <asp:Parameter Name="original_Uname" Type="String" />
                        <asp:Parameter Name="original_Uname" Type="String" />
                        <asp:Parameter Name="original_EmailId" Type="String" />
                        <asp:Parameter Name="original_EmailId" Type="String" />
                        <asp:Parameter Name="original_MobNo" Type="String" />
                        <asp:Parameter Name="original_MobNo" Type="String" />
                        <asp:Parameter Name="original_E_Msg" Type="String" />
                        <asp:Parameter Name="original_E_Msg" Type="String" />
                        <asp:Parameter Name="original_EDT" Type="String" />
                        <asp:Parameter Name="original_EDT" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
</asp:Content>

