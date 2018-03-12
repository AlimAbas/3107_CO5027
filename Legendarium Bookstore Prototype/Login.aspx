<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    LEGENDARIUM - Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Become a member
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
    Become a member and start shopping in a click away.
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">
<div class="col-lg-6 col-md-6 mb-2">
          <div class="card">
            <div class="card-body">
                <h4 class="card-title">Sign Up</h4>

<form action="action_page.php">
  <div class="container">
    <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="SignupEmail" runat="server" class="form-control"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="SignupPassword" runat="server" class="form-control"></asp:TextBox>
  </div>
            </div>

            <div class="card-footer">
              <asp:Button ID="SignupButton" runat="server" class="btn btn-primary" Text="Sign Up" OnClick="Send_Click" />
            </div>
            </div>
</form>
</div>

<div class="col-lg-6 col-md-6 mb-2">
          <div class="card">
            <div class="card-body">
                <h4 class="card-title">Login</h4>

<form action="action_page.php">

  <div class="container">
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="LoginEmail" runat="server" class="form-control"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="LoginPassword" runat="server" class="form-control"></asp:TextBox>
  </div>

  <div class="container" >
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
            </div>

            <div class="card-footer">
              <asp:Button ID="LoginButton" runat="server" class="btn btn-primary" Text="Login" OnClick="Send_Click" />
            </div>
          </div>

</form>
</div>
</asp:Content>
