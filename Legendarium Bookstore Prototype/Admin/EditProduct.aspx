<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Admin.EditProduct1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">
    <form id="form1" runat="server">
        <asp:Label ID="ProductID" runat="server" Text="Label"></asp:Label>


        <br />
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>


    </form>
</asp:Content>
