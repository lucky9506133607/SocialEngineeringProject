<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="PhishingAttack.Admin.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

<h4 align="center"> Add New Category  </h4>
    <hr />

    <table align="center" style="width: 100%">
        <tr>
            <td style="height: 24px; width: 455px">
                </td>
            <td style="height: 24px">
                </td>
        </tr>
        <tr>
            <td style="width: 455px" align="center">
                <asp:Label ID="Label1" runat="server" Text="Category Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="189px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 455px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" Width="104px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 455px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    
</div>
</asp:Content>
