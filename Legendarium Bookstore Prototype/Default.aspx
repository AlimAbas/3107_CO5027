<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Legendarium_Bookstore_Prototype._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    LEGENDARIUM - Homepage
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    LEGENDARIUM
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
    Browse and shop for books online.
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">
    
    <div class="row text-center">

    <asp:Repeater ID="ProductList" runat="server" DataSourceID="ProductListSource">
        <headertemplate></headertemplate>
        <ItemTemplate>
        
        <div class="col-lg-2 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="/ProductImages/<%# Eval("ProductID")%>.jpg" />
            <div class="card-footer">
                <a href="<%# Eval("ProductID","Product.aspx?id={0}")%>"><%# Eval("ProductName")%></a>
            </div>
            <div class="card-footer">
                <%# Eval("ProductAuthor")%>
            </div>
          </div>
        </div>


        </ItemTemplate>
        <FooterTemplate></FooterTemplate>
    </asp:Repeater>
     <asp:SqlDataSource ID="ProductListSource" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [ProductAuthor], [ProductCategory], [ProductPrice] FROM [Table_Product]"></asp:SqlDataSource>

    </div></asp:Content>


