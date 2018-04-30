<%@ Page Title="Upload Image" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    PRODUCT IMAGES - ID[<asp:Label ID="Label1" runat="server" Text=""></asp:Label>]
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
    Each product can have a primary, and secondary image.
    Upload the image one at a time.
    <a class="nav-link" href="ListProduct.aspx">- Return</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">

    <form id="Form1" runat="server">

<table class="table text-center">
  <tr>
    <th>PRIMARY IMAGE</th>
    <th>SECONDARY IMAGE</th>
  </tr>
  <tr>
    <td> <asp:FileUpload ID="FileUpload1" runat="server" /></td>
    <td><asp:FileUpload ID="FileUpload2" runat="server" /></td>
  </tr>
  <tr>
    <td><asp:Button ID="Upload1" runat="server" Text="Set Primary Image" OnClick="Upload1_Click" class="btn btn-info"/></td>
    <td><asp:Button ID="Upload2" runat="server" Text="Set Secondary Image" OnClick="Upload2_Click" class="btn btn-info"/></td>
  </tr>
  <tr>
    <td><asp:Image ID="ImageA" runat="server" style="max-width: 250px"/></td>
    <td><asp:Image ID="ImageB" runat="server" style="max-width: 250px"/></td>
  </tr>
</table>
 
    </form>
    
</asp:Content>
