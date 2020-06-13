<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMaster.master" AutoEventWireup="true" CodeFile="FeedbackMgmt.aspx.cs" Inherits="AdminZone_FeedbackMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 
        {
            width: 75%;
            border-spacing:0px;
            height:auto;
            margin:0px auto;
        }
        #fbheading 
        {
            height:50px;
            width:75%;
            border:1px solid #cccccc;
            margin:10px auto;
            font-size: x-large; 
            font-weight: bold; 
            text-align: center;
            border-radius:3px 3px 0px 0px;
            background:#69c144;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <div id="fbheading">Feedback Management</div>
    <table align="center" class="auto-style1" border="1">       
        
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" PageSize="12">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                        <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message" />
                        <asp:BoundField DataField="givenby" HeaderText="Given by" SortExpression="givenby" />
                        <asp:BoundField DataField="posteddt" HeaderText="Posted Date" SortExpression="posteddt" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="green" Font-Bold="True" ForeColor="White" height="40px"/>
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" height="30px"/>
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [ID] = ? AND (([subject] = ?) OR ([subject] IS NULL AND ? IS NULL)) AND (([message] = ?) OR ([message] IS NULL AND ? IS NULL)) AND (([givenby] = ?) OR ([givenby] IS NULL AND ? IS NULL)) AND (([posteddt] = ?) OR ([posteddt] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Feedback] ([ID], [subject], [message], [givenby], [posteddt]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Feedback] ORDER BY [ID] DESC" UpdateCommand="UPDATE [Feedback] SET [subject] = ?, [message] = ?, [givenby] = ?, [posteddt] = ? WHERE [ID] = ? AND (([subject] = ?) OR ([subject] IS NULL AND ? IS NULL)) AND (([message] = ?) OR ([message] IS NULL AND ? IS NULL)) AND (([givenby] = ?) OR ([givenby] IS NULL AND ? IS NULL)) AND (([posteddt] = ?) OR ([posteddt] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_subject" Type="String" />
                        <asp:Parameter Name="original_subject" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                        <asp:Parameter Name="original_givenby" Type="String" />
                        <asp:Parameter Name="original_givenby" Type="String" />
                        <asp:Parameter Name="original_posteddt" Type="String" />
                        <asp:Parameter Name="original_posteddt" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                        <asp:Parameter Name="givenby" Type="String" />
                        <asp:Parameter Name="posteddt" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                        <asp:Parameter Name="givenby" Type="String" />
                        <asp:Parameter Name="posteddt" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_subject" Type="String" />
                        <asp:Parameter Name="original_subject" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                        <asp:Parameter Name="original_givenby" Type="String" />
                        <asp:Parameter Name="original_givenby" Type="String" />
                        <asp:Parameter Name="original_posteddt" Type="String" />
                        <asp:Parameter Name="original_posteddt" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

