<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

     <h3>Wicked Easy Recipes</h3>  
        Using 5 Ingredients or Less! <br />

        <a href="Default.aspx">Home</a>
        <a href="NewRecipe.aspx">New Recipe</a>
        <a href="AboutUs.aspx">About Us</a>
        <a href="ContactUs.aspx">Contact</a>
        <br />
        <br />
        Your Email Address:<br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp; Your Message:<br />
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="55px" Width="251px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#33CC33" Text="Send Message" />
        <br />


        <br />
        <br />

        &copy; 2013. 6K:183 Software Design & Development 
    </div>
    </form>
</body>
</html>
