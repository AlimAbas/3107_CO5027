﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
REGISTER
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
REGISTER
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
Sign up and become a member to make purchases.
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">

    <form id="formregister" runat="server" style="width: 40%;" class="container text-center">

        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="RegEmail" runat="server" Text="" class="form-control"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="RegPassword" runat="server" Text="" class="form-control"></asp:TextBox>
        <br />
        <asp:button ID="RegButton" runat="server" class="btn btn-primary" text="Register" OnClick="Register_Click" />
        <br />
        <asp:Literal ID="LitRegisterError" runat="server"></asp:Literal>

    </form>

</asp:Content>
