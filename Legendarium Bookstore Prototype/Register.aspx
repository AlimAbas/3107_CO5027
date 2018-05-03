<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
REGISTER
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    <asp:Label ID="Headertitle" runat="server" Text="REGISTER"></asp:Label>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
    <asp:Label ID="Subtitle" runat="server" Text="Sign up and become a member now. "></asp:Label>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">

    <form id="formregister" runat="server" style="width: 40%;" class="container text-center">

        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="RegEmail" runat="server" Text="" class="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is required." ControlToValidate="RegEmail" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="RegPassword" runat="server" TextMode="Password" Text="" class="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required." ControlToValidate="RegPassword" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <asp:button ID="RegButton" runat="server" class="btn btn-primary" text="Register" OnClick="Register_Click" />
        <br />
        <asp:Literal ID="LitRegisterError" runat="server"></asp:Literal>

    </form>

</asp:Content>
