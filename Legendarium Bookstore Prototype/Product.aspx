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
    

   <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Width="509px" style="margin-right: 0px">
        <EditItemTemplate>
        </EditItemTemplate>
        <InsertItemTemplate>
        </InsertItemTemplate>
        <ItemTemplate>

          <table class="table">
          <tr>
            <th rowspan="5" class="text-center"><img src="/ProductImages/<%# Eval("ProductID")%>.jpg"/></th>
            <th>TITLE</th>
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
            <td><asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' /></td>
          </tr>
          <tr>
            <td>STOCK</td>
            <td></td>
          </tr>
        </table>
            <hr />
            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductDesc") %>' />
                  

        </ItemTemplate>
        </asp:FormView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [Table_Product] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:DropDownList ID="DDLQuantity" runat="server" Height="16px" Width="87px"></asp:DropDownList>

    </div>
    </form>
    
</asp:Content>