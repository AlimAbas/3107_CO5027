<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    LEGENDARIUM - Product
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    BOOK DETAILS
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
    THE LONGEST RIDE, by Nicholas Sparks
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
              <center><a href="#" class="btn btn-primary">Add to cart</a></center>
            </div>
          </div>
        </div>

<div class="col-lg-9 col-md-6 mb-4">
<h4>ABOUT</h4>
<p>After being trapped in an isolated car crash, the life of elderly widower Ira Levinson becomes entwined with that of young college student, Sophia Danko and the cowboy whom she loves, named Luke. The novel is told through the perspectives of these three characters as they go through their lives, both separately and together.</p>
<p>Ira Levinson, ninety-one years old and already in poor health, is just holding on; remaining alert only because his wife Ruth, who has died, appears as an image to help him remember their life together: how they met, the paintings they collected and the dark days of WW2.</p>
<p>Just a few miles away, Sophia, a Wake Forest college student's life is about to change forever as she meets an unexpected love, Luke. Luke is a cowboy and risk-taking bull-rider, unlike anyone she has ever known. Together they experience the joys of love as well as the difficulties that come with Luke's dangerous career.</p>
<p>Two couples who have little in common, yet whose lives will converge with unexpected poignancy.</p>
</div>
</div>
</asp:Content>