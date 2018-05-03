<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductPurchase.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Member.ProductPurchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    LEGENDARIUM - Product
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    <asp:Label ID="Headertitle" runat="server" Text="PURCHASE PRODUCT"></asp:Label>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
    <asp:Label ID="Subtitle" runat="server" Text="Select the quantity for the selected product before proceeding."></asp:Label>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server"><form id="form2" runat="server">

   <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" style="margin-right: 0px">
        <ItemTemplate>

          <table class="table">
          <tr>

              <!--- PRODUCT IMAGE --->

            <th rowspan="5" style="width: 30%;">

              <div id="myCarousel" class="carousel slide bg-inverse w-50 ml-auto mr-auto" data-ride="carousel">
              <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
              </ol>
              <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                  <asp:Image ID="Image1" runat="server" AlternateText="Primary Image" ImageUrl='<%# Eval("ProductID","~/ProductImages/{0}A.jpg") %>' style="max-width: 100%; height: auto;"/>
                </div>
                <div class="carousel-item">
                  <asp:Image ID="Image2" runat="server" AlternateText="Secondary Image" ImageUrl='<%# Eval("ProductID","~/ProductImages/{0}B.jpg") %>' style="max-width: 100%; height: auto;"/>
                </div>
              </div>
              <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="false"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="false"></span>
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
            <td>$<asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>'/> (+$5.00 Packaging)</td>
          </tr>
          <tr>
            <td>STOCK</td>
            <td><asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductQuantity") %>' /></td>
          </tr>
        </table>

        </ItemTemplate>
        </asp:FormView>
        
      <div class="span8">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [Table_Product] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
          
          <table class="table text-center">
            <tr>
            <th>PURCHASE</th>
            </tr>
            <tr>

            <td>Quantity
                <asp:DropDownList ID="ddlQuantity" runat="server">
              <asp:ListItem>1</asp:ListItem>
              <asp:ListItem>2</asp:ListItem>
              <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>

            </td>
            </tr>

            <tr>
          <td>          <asp:Button ID="btnPurchaseProduct" runat="server" OnClick="BtnPurchaseProduct_Click" Text="Proceed with PayPal" class="btn btn-info"/> </td>
            </tr>

            <tr>
          <td><a href="https://www.paypal.com/webapps/mpp/paypal-popup" title="How PayPal Works" onclick="javascript:window.open('https://www.paypal.com/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;"><img src="https://www.paypalobjects.com/webstatic/mktg/logo/AM_mc_vs_dc_ae.jpg" border="0" alt="PayPal Acceptance Mark"></a></td>
            </tr>

        </table>
          <br />

        </div>
        </form>

</asp:Content>