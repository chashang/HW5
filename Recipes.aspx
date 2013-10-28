<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipes.aspx.vb" Inherits="Recipes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

        

         <h3> Wicked Easy Recipes</h3>  
        Using 5 Ingredients or Less! <br />

        <a href="Default.aspx">Home</a>
        <a href="NewRecipe.aspx">New Recipe</a>
        <a href="AboutUs.aspx">About Us</a>
        <a href="ContactUs.aspx">Contact</a> <br />
    
        <br />

        
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_recpie %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Recipe_Name], [Submitted_By], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Table] SET [Recipe_Name] = @Recipe_Name, [Submitted_By] = @Submitted_By, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Id] = @Id">
             <DeleteParameters>
                 <asp:Parameter Name="Id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="Recipe_Name" Type="String" />
                 <asp:Parameter Name="Submitted_By" Type="String" />
                 <asp:Parameter Name="Ingredient1" Type="String" />
                 <asp:Parameter Name="Ingredient2" Type="String" />
                 <asp:Parameter Name="Ingredient3" Type="String" />
                 <asp:Parameter Name="Ingredient4" Type="String" />
                 <asp:Parameter Name="Ingredient5" Type="String" />
                 <asp:Parameter Name="Preparation" Type="String" />
                 <asp:Parameter Name="Notes" Type="String" />
             </InsertParameters>
             <SelectParameters>
                 <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
             </SelectParameters>
             <UpdateParameters>
                 <asp:Parameter Name="Recipe_Name" Type="String" />
                 <asp:Parameter Name="Submitted_By" Type="String" />
                 <asp:Parameter Name="Ingredient1" Type="String" />
                 <asp:Parameter Name="Ingredient2" Type="String" />
                 <asp:Parameter Name="Ingredient3" Type="String" />
                 <asp:Parameter Name="Ingredient4" Type="String" />
                 <asp:Parameter Name="Ingredient5" Type="String" />
                 <asp:Parameter Name="Preparation" Type="String" />
                 <asp:Parameter Name="Notes" Type="String" />
                 <asp:Parameter Name="Id" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="263px">
             <Fields>
                 <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe_Name" SortExpression="Recipe_Name" />
                 <asp:BoundField DataField="Submitted_By" HeaderText="Submitted_By" SortExpression="Submitted_By" />
                 <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient1" SortExpression="Ingredient1" />
                 <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient2" SortExpression="Ingredient2" />
                 <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient3" SortExpression="Ingredient3" />
                 <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient4" SortExpression="Ingredient4" />
                 <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient5" SortExpression="Ingredient5" />
                 <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                 <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
             </Fields>
         </asp:DetailsView>
    
        <br />
        <br />
        &copy; 2013. 6K:183 Software Design & Development 
    </div>
    </form>
</body>
</html>
