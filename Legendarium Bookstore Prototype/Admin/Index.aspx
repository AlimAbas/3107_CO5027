<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Admin.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">LEGENDARIUM - Admin Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">Admin Page
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">Welcome Admin.
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">

<div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">
                    <a href="ListProduct.aspx">List Product</a>
                </h4>
            </div>
          </div>
        </div>

<div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">
                    <a href="AddProduct.aspx">Add Product</a>
                </h4>
            </div>
          </div>
        </div>
</asp:Content>
