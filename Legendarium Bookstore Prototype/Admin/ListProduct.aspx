<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="ListProduct.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Admin.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">

    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource" OnSelectedIndexChanged="GridView1_SelectIndexChanged">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="TITLE" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductCategory" HeaderText="CATEGORY" SortExpression="ProductCategory" />
                <asp:BoundField DataField="ProductAuthor" HeaderText="AUTHOR" SortExpression="ProductAuthor" />
                <asp:BoundField DataField="ProductDesc" HeaderText="ABOUT" SortExpression="ProductDesc" />
                <asp:BoundField DataField="ProductPrice" HeaderText="PRICE" SortExpression="ProductPrice" />
                <asp:BoundField DataField="ProductQuantity" HeaderText="Stock" SortExpression="ProductStock" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="UploadImage.aspx?id={0}" Text="Upload Image" ShowHeader="False" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [Table_Product] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductCategory] = @original_ProductCategory) OR ([ProductCategory] IS NULL AND @original_ProductCategory IS NULL)) AND (([ProductAuthor] = @original_ProductAuthor) OR ([ProductAuthor] IS NULL AND @original_ProductAuthor IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL))" InsertCommand="INSERT INTO [Table_Product] ([ProductID], [ProductName], [ProductDesc], [ProductCategory], [ProductAuthor], [ProductPrice]) VALUES (@ProductID, @ProductName, @ProductDesc, @ProductCategory, @ProductAuthor, @ProductPrice)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table_Product]" UpdateCommand="UPDATE [Table_Product] SET [ProductName] = @ProductName, [ProductDesc] = @ProductDesc, [ProductCategory] = @ProductCategory, [ProductAuthor] = @ProductAuthor, [ProductPrice] = @ProductPrice WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductCategory] = @original_ProductCategory) OR ([ProductCategory] IS NULL AND @original_ProductCategory IS NULL)) AND (([ProductAuthor] = @original_ProductAuthor) OR ([ProductAuthor] IS NULL AND @original_ProductAuthor IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDesc" Type="String" />
                <asp:Parameter Name="original_ProductCategory" Type="String" />
                <asp:Parameter Name="original_ProductAuthor" Type="String" />
                <asp:Parameter Name="original_ProductPrice" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDesc" Type="String" />
                <asp:Parameter Name="ProductCategory" Type="String" />
                <asp:Parameter Name="ProductAuthor" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDesc" Type="String" />
                <asp:Parameter Name="ProductCategory" Type="String" />
                <asp:Parameter Name="ProductAuthor" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="Double" />
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDesc" Type="String" />
                <asp:Parameter Name="original_ProductCategory" Type="String" />
                <asp:Parameter Name="original_ProductAuthor" Type="String" />
                <asp:Parameter Name="original_ProductPrice" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>
