<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Add Product
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">
    <form id="form1" runat="server">
        <div class="container">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource" DefaultMode="Insert">
            <EditItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductDesc:
                <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
                <br />
                ProductCategory:
                <asp:TextBox ID="ProductCategoryTextBox" runat="server" Text='<%# Bind("ProductCategory") %>' />
                <br />
                ProductAuthor:
                <asp:TextBox ID="ProductAuthorTextBox" runat="server" Text='<%# Bind("ProductAuthor") %>' />
                <br />
                ProductPrice:
                <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                ProductQuantity:
                <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                ProductImages:
                <asp:TextBox ID="ProductImagesTextBox" runat="server" Text='<%# Bind("ProductImages") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductDesc:
                <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
                <br />
                ProductCategory:
                <asp:TextBox ID="ProductCategoryTextBox" runat="server" Text='<%# Bind("ProductCategory") %>' />
                <br />
                ProductAuthor:
                <asp:TextBox ID="ProductAuthorTextBox" runat="server" Text='<%# Bind("ProductAuthor") %>' />
                <br />
                ProductPrice:
                <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                ProductQuantity:
                <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductDesc:
                <asp:Label ID="ProductDescLabel" runat="server" Text='<%# Bind("ProductDesc") %>' />
                <br />
                ProductCategory:
                <asp:Label ID="ProductCategoryLabel" runat="server" Text='<%# Bind("ProductCategory") %>' />
                <br />

                ProductAuthor:
                <asp:Label ID="ProductAuthorLabel" runat="server" Text='<%# Bind("ProductAuthor") %>' />
                <br />
                ProductPrice:
                <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />

                ProductQuantity:
                <asp:Label ID="ProductQuantityLabel" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                ProductImages:
                <asp:Label ID="ProductImagesLabel" runat="server" Text='<%# Bind("ProductImages") %>' />
                <br />

                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [Table_Product] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductCategory] = @original_ProductCategory) OR ([ProductCategory] IS NULL AND @original_ProductCategory IS NULL)) AND (([ProductAuthor] = @original_ProductAuthor) OR ([ProductAuthor] IS NULL AND @original_ProductAuthor IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL)) AND (([ProductImages] = @original_ProductImages) OR ([ProductImages] IS NULL AND @original_ProductImages IS NULL))" InsertCommand="INSERT INTO [Table_Product] ([ProductName], [ProductDesc], [ProductCategory], [ProductAuthor], [ProductPrice], [ProductQuantity], [ProductImages]) VALUES (@ProductName, @ProductDesc, @ProductCategory, @ProductAuthor, @ProductPrice, @ProductQuantity, @ProductImages)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table_Product]" UpdateCommand="UPDATE [Table_Product] SET [ProductName] = @ProductName, [ProductDesc] = @ProductDesc, [ProductCategory] = @ProductCategory, [ProductAuthor] = @ProductAuthor, [ProductPrice] = @ProductPrice, [ProductQuantity] = @ProductQuantity, [ProductImages] = @ProductImages WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductCategory] = @original_ProductCategory) OR ([ProductCategory] IS NULL AND @original_ProductCategory IS NULL)) AND (([ProductAuthor] = @original_ProductAuthor) OR ([ProductAuthor] IS NULL AND @original_ProductAuthor IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL)) AND (([ProductImages] = @original_ProductImages) OR ([ProductImages] IS NULL AND @original_ProductImages IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDesc" Type="String" />
                <asp:Parameter Name="original_ProductCategory" Type="String" />
                <asp:Parameter Name="original_ProductAuthor" Type="String" />
                <asp:Parameter Name="original_ProductPrice" Type="Int32" />
                <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
                <asp:Parameter Name="original_ProductImages" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDesc" Type="String" />
                <asp:Parameter Name="ProductCategory" Type="String" />
                <asp:Parameter Name="ProductAuthor" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="Int32" />
                <asp:Parameter Name="ProductQuantity" Type="Int32" />
                <asp:Parameter Name="ProductImages" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDesc" Type="String" />
                <asp:Parameter Name="ProductCategory" Type="String" />
                <asp:Parameter Name="ProductAuthor" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="Int32" />
                <asp:Parameter Name="ProductQuantity" Type="Int32" />
                <asp:Parameter Name="ProductImages" Type="String" />
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDesc" Type="String" />
                <asp:Parameter Name="original_ProductCategory" Type="String" />
                <asp:Parameter Name="original_ProductAuthor" Type="String" />
                <asp:Parameter Name="original_ProductPrice" Type="Int32" />
                <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
                <asp:Parameter Name="original_ProductImages" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
    </div>
</asp:Content>
