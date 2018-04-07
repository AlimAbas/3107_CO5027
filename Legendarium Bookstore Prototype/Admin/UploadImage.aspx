<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUploadImage" runat="server" />
        <asp:Button ID="Button1" runat="server" OnClick="Button3_Click" Text="Button" />
    </form>
</asp:Content>
