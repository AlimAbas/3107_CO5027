<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Legendarium_Bookstore_Prototype._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Homepage
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
        
        <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">

            <!-- PRODUCT IMAGE + LINK -->
            <div class="card-header">
                <a href="<%# Eval("ProductID","Product.aspx?id={0}")%>">

                <asp:Image class="card-img-top" ID="imgCover" runat="server" AlternateText="Image Cover" ImageUrl='<%# Eval("ProductID","~/ProductImages/{0}A.jpg") %>' />

                </a>
            </div>

            <!-- PRODUCT NAME + AUTHOR -->
            <div class="card-body">
                
                <h5 class="card-title"><%# Eval("ProductName")%></h5>
                <h6 class="card-subtitle mb-2 text-muted"><%# Eval("ProductAuthor")%></h6>
            </div>

            <!-- PRODUCT PRICE -->
            <div class="card-footer">
                $<%# Eval("ProductPrice")%>
            </div>
          </div>
        </div>


        </ItemTemplate>
        <FooterTemplate></FooterTemplate>
    </asp:Repeater>
     <asp:SqlDataSource ID="ProductListSource" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [ProductAuthor], [ProductCategory], [ProductPrice] FROM [Table_Product]"></asp:SqlDataSource>

    </div></asp:Content>


