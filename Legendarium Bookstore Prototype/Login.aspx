﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">

    <form id="formlogin" runat="server" style="width: 40%;" class="container text-center">

        <asp:Label ID="Label1" runat="server" Text="Username" ></asp:Label>
        <br />
        <asp:TextBox ID="LogEmail" runat="server" class="form-control"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password" ></asp:Label>
        <br />
        <asp:TextBox ID="LogPassword" TextMode="Password" runat="server" class="form-control"></asp:TextBox>
        <br />
        <asp:Button ID="LogButton" runat="server" class="btn btn-primary" Text="Login" OnClick="LogButton_Click"/>
        <br />
        <a class="nav-link" href="Register.aspx">Not yet a member? Register here.</a>
        <asp:Literal ID="LitLoginError" runat="server"></asp:Literal>
        <br />

        </form>


</asp:Content>
