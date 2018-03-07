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
    <label for="uname"><b>Email</b></label>
    <input type="text" class="form-control" placeholder="Enter E-mail Address" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" class="form-control" placeholder="Enter Password" name="psw" required>


  </div>

            </div>

            <div class="card-footer">
              <center><button class="btn btn-primary" type="submit">Register</button></center>
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
    <label for="uname"><b>Email</b></label>
    <input type="text" class="form-control" placeholder="Enter E-mail Address" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" class="form-control" placeholder="Enter Password" name="psw" required>

    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>
  <div class="container" >
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
            </div>

            <div class="card-footer">
              <center><button class="btn btn-primary" type="submit">Login</button></center>
            </div>
          </div>

</form>
</div>
</asp:Content>
