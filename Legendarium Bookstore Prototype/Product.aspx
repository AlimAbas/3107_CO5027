<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    LEGENDARIUM - Product
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    PRODUCT DETAILS
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server"><form id="form2" runat="server">

   <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" style="margin-right: 0px">
        <ItemTemplate>

          <table class="table">
          <tr>

              <!--- PRODUCT IMAGE --->

            <th rowspan="5" style="width: 50%;">

              <div id="myCarousel" class="carousel slide bg-inverse w-50 ml-auto mr-auto" data-ride="carousel">
              <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
              </ol>
              <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                  <img src="/ProductImages/<%# Eval("ProductID")%>A.jpg" style="max-width: 100%; height: auto;"/>
                </div>
                <div class="carousel-item">
                  <img src="/ProductImages/<%# Eval("ProductID")%>B.jpg" style="max-width: 100%; height: auto;"/>
                </div>
              </div>
              <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
            </th>

              <!--- PRODUCT DETAILS --->
            <th style="width: 10%;">TITLE</th>
            <th><asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' /></th>
          </tr>
          <tr>
            <td>AUTHOR</td>
            <td><asp:Label ID="ProductAuthorLabel" runat="server" Text='<%# Bind("ProductAuthor") %>' /></td>
          </tr>
          <tr>
            <td>CATEGORY</td>
            <td><asp:Label ID="ProductCategoryLabel" runat="server" Text='<%# Bind("ProductCategory") %>' /></td>
          </tr>
          <tr>
            <td>PRICE</td>
            <td>$<asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' /></td>
          </tr>
          <tr>
            <td>STOCK</td>
            <td></td>
          </tr>
        </table>

            <!--- PRODUCT DESCRIPTION --->
            <hr />
            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductDesc") %>' />
                  

        </ItemTemplate>
        </asp:FormView>
        
      <div class="span8">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [Table_Product] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:DropDownList ID="DDLQuantity" runat="server" Height="16px" Width="87px"></asp:DropDownList>
        </div>
        </form>
</asp:Content>