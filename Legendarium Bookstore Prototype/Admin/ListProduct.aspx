﻿<%@ Page Title="List Product" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="ListProduct.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Admin.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
PRODUCT LIST
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    <asp:Label ID="Headertitle" runat="server" Text="LIST OF PRODUCTS"></asp:Label>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
    <asp:Label ID="Subtitle" runat="server" Text="View and update the database product here."></asp:Label>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="Content3" runat="server">

    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource" OnSelectedIndexChanged="GridView1_SelectIndexChanged"  class="text-center table table-striped table-bordered table-hover" style="width:90%; margin: 0 auto;">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="TITLE" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductCategory" HeaderText="CATEGORY" SortExpression="ProductCategory" />
                <asp:BoundField DataField="ProductAuthor" HeaderText="AUTHOR" SortExpression="ProductAuthor" />
                <asp:BoundField DataField="ProductDesc" HeaderText="ABOUT" SortExpression="ProductDesc" />
                <asp:BoundField DataField="ProductPrice" HeaderText="PRICE" SortExpression="ProductPrice" />
                <asp:BoundField DataField="ProductQuantity" HeaderText="Stock" SortExpression="ProductStock" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="UploadImage.aspx?id={0}" Text="Image" ShowHeader="False" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [Table_Product] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductCategory] = @original_ProductCategory) OR ([ProductCategory] IS NULL AND @original_ProductCategory IS NULL)) AND (([ProductAuthor] = @original_ProductAuthor) OR ([ProductAuthor] IS NULL AND @original_ProductAuthor IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL))" InsertCommand="INSERT INTO [Table_Product] ([ProductName], [ProductDesc], [ProductCategory], [ProductAuthor], [ProductPrice], [ProductQuantity]) VALUES (@ProductName, @ProductDesc, @ProductCategory, @ProductAuthor, @ProductPrice, @ProductQuantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ProductID], [ProductName], [ProductDesc], [ProductCategory], [ProductAuthor], [ProductPrice], [ProductQuantity] FROM [Table_Product]" UpdateCommand="UPDATE [Table_Product] SET [ProductName] = @ProductName, [ProductDesc] = @ProductDesc, [ProductCategory] = @ProductCategory, [ProductAuthor] = @ProductAuthor, [ProductPrice] = @ProductPrice, [ProductQuantity] = @ProductQuantity WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductCategory] = @original_ProductCategory) OR ([ProductCategory] IS NULL AND @original_ProductCategory IS NULL)) AND (([ProductAuthor] = @original_ProductAuthor) OR ([ProductAuthor] IS NULL AND @original_ProductAuthor IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDesc" Type="String" />
                <asp:Parameter Name="original_ProductCategory" Type="String" />
                <asp:Parameter Name="original_ProductAuthor" Type="String" />
                <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
                <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDesc" Type="String" />
                <asp:Parameter Name="ProductCategory" Type="String" />
                <asp:Parameter Name="ProductAuthor" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="Decimal" />
                <asp:Parameter Name="ProductQuantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDesc" Type="String" />
                <asp:Parameter Name="ProductCategory" Type="String" />
                <asp:Parameter Name="ProductAuthor" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="Decimal" />
                <asp:Parameter Name="ProductQuantity" Type="Int32" />
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDesc" Type="String" />
                <asp:Parameter Name="original_ProductCategory" Type="String" />
                <asp:Parameter Name="original_ProductAuthor" Type="String" />
                <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
                <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>
