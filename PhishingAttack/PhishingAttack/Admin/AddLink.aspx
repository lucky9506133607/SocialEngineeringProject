<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddLink.aspx.cs" Inherits="PhishingAttack.Admin.AddLink" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

<h4 align="center"> Add Link </h4>
<hr />

    <table align="center" style="width: 100%">
        <tr>
            <td style="width: 455px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 455px">
                <asp:Label ID="Label1" runat="server" Text="Link Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLinkName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 455px">
                <asp:Label ID="Label2" runat="server" Text="Select Category"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="selCategory" runat="server" Height="22px" Width="140px" 
                    DataSourceID="SqlDataSource1" DataTextField="CategoryName" 
                    DataValueField="CategoryId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:IdHackDBConnectionString2 %>" 
                    SelectCommand="SELECT DISTINCT [CategoryId], [CategoryName] FROM [AddCategory]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 455px">
                <asp:Label ID="Label3" runat="server" Text="Link Image"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="logoImageUpload" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 455px; height: 30px;">
                </td>
            <td style="height: 30px">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="97px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 455px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   </div>

</asp:Content>
