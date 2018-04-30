<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Admin.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">LEGENDARIUM - Admin Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">ADMIN DASHBOARD
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">Welcome Admin. Use the links below to add, view, and update the products on the website.
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">

<table class="table text-center">
  <tr>
    <th><h2><a href="ListProduct.aspx">VIEW PRODUCTS</a></h2></th>
    <th><h2><a href="AddProduct.aspx">ADD A NEW PRODUCT</a></th>
  </tr>
</table>

</asp:Content>
