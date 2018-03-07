<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Legendarium_Bookstore_Prototype._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    LEGENDARIUM - Homepage
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    LEGENDARIUM
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
    Browse and shop for books online.
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">
<div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            <img class="card-img-top" src="https://images.gr-assets.com/books/1367536453l/17407748.jpg" alt="">
            <div class="card-body">
              <h4 class="card-title">The Longest Ride</h4>
              <h6 class="card-author">Nicholas Sparks</h6>
              <h5 class="card-price">$20.00</h5>
            </div>
            <div class="card-footer">
              <a href="product.aspx" class="btn btn-primary">Details</a>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            <img class="card-img-top" src="https://www.dynamite.com/previews/C72513025840303011/SKinEarth03CovB.jpg" alt="">
            <div class="card-body">
              <h4 class="card-title">Skin & Earth #3</h4>
              <h6 class="card-author">Lights Bokan</h6>
              <h5 class="card-price">$20.00</h5>
            </div>
            <div class="card-footer">
              <a href="product.aspx" class="btn btn-primary">Details</a>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            <img class="card-img-top" src="https://media.npr.org/assets/bakertaylor/covers/t/the-hunger-games/9780439023481_custom-bcd24563df66b0cf3b975147e537786a53857a4b-s400-c85.jpg" alt="">
            <div class="card-body">
              <h4 class="card-title">The Hunger Games</h4>
              <h6 class="card-author">Suzanne Collins</h6>
              <h5 class="card-price">$20.00</h5>
            </div>
            <div class="card-footer">
              <a href="product.aspx" class="btn btn-primary">Details</a>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            <img class="card-img-top" src="https://images-na.ssl-images-amazon.com/images/I/51IvEwy6JvL.jpg" alt="">
            <div class="card-body">
              <h4 class="card-title">Percy Jackson - The Last Olympian</h4>
              <h6 class="card-title">Rick Riordan</h6>
              <h5 class="card-title">$20.00</h5>
            </div>
            <div class="card-footer">
              <a href="product.aspx" class="btn btn-primary">Details</a>
            </div>
          </div>
        </div>
    </asp:Content>