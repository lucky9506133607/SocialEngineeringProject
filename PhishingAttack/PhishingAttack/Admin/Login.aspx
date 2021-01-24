<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PhishingAttack.Admin.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:Label ID="Label1" runat="server" Text="Phishing Attack" CssClass="style1" 
            ForeColor="#FF6600" style="font-size:50px; margin-left:40%"></asp:Label>

        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Admin Login" ForeColor="black"></asp:Label>

        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Login id" ForeColor="#FF6600"></asp:Label>
        <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/images/admin.png" Width="43px" ImageAlign="AbsBottom" BorderColor="#FF99FF">
        </asp:ImageMap>
        <asp:TextBox ID="txtLoginId" runat="server" placeholder="Enter Email" Height="30px" Width="154px" Font-Bold="True"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Password" ForeColor="#FF6600"></asp:Label>
        <asp:ImageMap ID="ImageMap2" runat="server" ImageUrl="~/images/password.png" Width="43px" ImageAlign="AbsBottom" BorderColor="#FF99FF">
        </asp:ImageMap>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter Password" Height="30px" Width="154px" Font-Bold="True"></asp:TextBox>
        <br />

        <asp:ImageButton ID="ImageButton1" runat="server" Height="51px" ImageUrl="~/images/login but.png" Width="182px" CssClass="button" 
            onclick="ImageButton1_Click"/>

        <br />
            <td>
       </td>
        <br />
        <asp:Label ID="lblAlert" runat="server" ForeColor="Orange" style="margin-left:44%;"></asp:Label>
        <br />
    </div>
    </form>
</body>
</html>
