<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AllCategory.aspx.cs" Inherits="PhishingAttack.Admin.AllCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div>
<h4 align="center"> All Category </h4>

    <table align="center" style="width: 100%">
        <tr align="center">
            <td>
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="CategoryId" DataSourceID="SqlDataSource1" Width="250px">
                    <Columns>
                        <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" 
                            InsertVisible="False" ReadOnly="True" SortExpression="CategoryId" />
                        <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" 
                            SortExpression="CategoryName" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:IdHackDBConnectionString3 %>" 
                    SelectCommand="SELECT DISTINCT * FROM [AddCategory]"></asp:SqlDataSource>
                </td>
        </tr>
    </table>



</div>

</asp:Content>
