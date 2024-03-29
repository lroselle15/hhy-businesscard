﻿<%@ Page Language="C#" Inherits="BusinessCard.Default" %>
<!DOCTYPE html>


<html>
<head runat="server">
        <title></title>
	<B> Please completely fill out the following information </B>
        <br /><br />
</head>
<body>
	<form id="form1" runat="server">
         What is your reason for requesting a new business card?
         <br />            
         <asp:RadioButton ID="PromotionOpt" runat="server" GroupName="reason" Text="Promotion" />
         <asp:RadioButton ID="NewhireOpt" runat="server" GroupName="reason" Text="New hire" />
         <asp:RadioButton ID="OtherOpt" runat="server" GroupName="reason" Text="Other" />
                <br />  <br />    
         <asp:TextBox ID="reasontxt" runat="server" TextMode="MultiLine" Rows="5" ></asp:TextBox>
                <br /><br /> <hr>            
         What Company do you work for?            
                <br />            
         <asp:DropDownList ID="ddList" runat="server">
            <asp:ListItem Value="">--Select Month--</asp:ListItem>
            <asp:ListItem Value="1">Havas Health & You</asp:ListItem>
            <asp:ListItem Value="2">Chelsea H4B</asp:ListItem>
         </asp:DropDownList>          
                <br /> <hr>     
         Company Address <asp:TextBox ID="CompanyAddress" runat="server"></asp:TextBox>             
                <br /> <hr>           
         Enter your Full Name:&nbsp &nbsp <asp:TextBox ID="FullName" runat="server"></asp:TextBox>
                <br /> <hr>
         Enter your Title:&nbsp &nbsp <asp:TextBox ID="Jobtitle" runat="server"></asp:TextBox>
                <br /> <hr>
         Work Phone Number:&nbsp &nbsp <asp:TextBox ID="WorkPhone" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator" 
            ControlToValidate="WorkPhone" ValidationExpression="^\d+$" 
            ErrorMessage="Enter Numbers Only" Display="Dynamic" SetFocusOnError="True" />
                <br /> <hr>
         Mobile Phone Number:&nbsp &nbsp <asp:TextBox ID="MobilePhone" runat="server"></asp:TextBox>
             <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator2" 
            ControlToValidate="MobilePhone" ValidationExpression="^\d+$" 
            ErrorMessage="Enter Numbers Only" Display="Dynamic" SetFocusOnError="True" />
                <br /> <hr>
         Enter Your Email:&nbsp &nbsp <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                <br /> <hr>
         Enter Your Website URL:&nbsp &nbsp <asp:TextBox ID="websiteurl" runat="server"></asp:TextBox>
                <br /> <hr>
		<asp:Button id="button1" runat="server" Text="Submit" OnClick="button1Clicked" />
	</form>
</body>
</html>
