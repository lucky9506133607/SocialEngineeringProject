<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Instagram.aspx.cs" Inherits="PhishingAttack.Instagram" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>instagram</title>
    <link rel="icon" href="images/instagram icon.png" type="imgaes/gif" />
    <link rel="stylesheet" href="css/instagram.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <img id="firstimg" src="images/instagram-ads-in-explore_feed.png" width="499" height="1024" alt=""/>
 <div id="content">
 <div id="instatext"> <p> Instagram </p> </div>
      <asp:TextBox ID="emailid" runat="server" placeholder="Phone number,username,or email"></asp:TextBox>

     <asp:TextBox ID="passwordtxt" runat="server" placeholder="Password"></asp:TextBox>
     <asp:Button ID="loginbtn" runat="server" Text="Log In" 
         onclick="loginbtn_Click" />

 <hr id="firsthr">
 <p id="or"> OR </p>
  <hr id="secondhr"> 
  
  <div id="facebooklogiimg">   <img src="images/social-facebook-icon.png" width="1024" height="1024" alt=""/></div>
  
  <div id="Login">
    <p><a href="https://www.facebook.com/login.php?skip_api_login=1&amp;api_key=124024574287414&amp;kid_directed_site=0&amp;app_id=124024574287414&amp;signed_next=1&amp;next=https%3A%2F%2Fwww.facebook.com%2Fdialog%2Foauth%3Fclient_id%3D124024574287414%26redirect_uri%3Dhttps%253A%252F%252Fwww.instagram.com%252Faccounts%252Fsignup%252F%26state%3D%257B%2522fbLoginKey%2522%253A%25221n121w4ab1f2yadwqjw4qa2teszxu4ys712x1xn4dzz1dyrftq%2522%252C%2522fbLoginReturnURL%2522%253A%2522%252F%2522%257D%26scope%3Demail%26response_type%3Dcode%252Cgranted_scopes%26locale%3Den_US%26ret%3Dlogin%26fbapp_pres%3D0%26logger_id%3Da487a25a-97a6-45b2-9525-581542d9fe26&amp;cancel_url=https%3A%2F%2Fwww.instagram.com%2Faccounts%2Fsignup%2F%3Ferror%3Daccess_denied%26error_code%3D200%26error_description%3DPermissions%2Berror%26error_reason%3Duser_denied%26state%3D%257B%2522fbLoginKey%2522%253A%25221n121w4ab1f2yadwqjw4qa2teszxu4ys712x1xn4dzz1dyrftq%2522%252C%2522fbLoginReturnURL%2522%253A%2522%252F%2522%257D%23_%3D_&amp;display=page&amp;locale=en_GB&amp;pl_dbl=0"> Log in with Facebook </a></p>
  </div>
  <div id="forgotpassword"><a href="https://www.instagram.com/accounts/password/reset/"> Forgot password? </a></div>
</div>

<div id="secondcontent">
<div id="createaccount"> Don't have an account? <a href="https://www.instagram.com/accounts/emailsignup/">Sign up </a></div>

</div>

<h5 id="getapp"> Get the app. </h5>
<div id="thirdcontent">  
<img src="images/download-on-app-store-png-open-2000.png" width="2000" height="593" alt="" 
id="firstimg"/>
<img src="images/en_badge_web_generic.png" width="646" height="250" alt="" id="secondimg"/> </div>

    </form>
</body>
</html>
