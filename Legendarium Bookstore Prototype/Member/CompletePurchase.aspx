<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CompletePurchase.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.CompletePurchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    COMPLETE YOUR PURCHASE
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">

    <form id="form1" runat="server" class="text-center">
    <asp:Button ID="btnConfirmPurchase" runat="server" OnClick="BtnConfirmPurchase_Click" Text="COMPLETE" class="btn btn-success"/>
    <asp:Literal ID="litInformation" runat="server"></asp:Literal>
</form>

</asp:Content>
