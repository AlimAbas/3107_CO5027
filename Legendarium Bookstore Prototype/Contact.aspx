<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    LEGENDARIUM - Contact
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">

    <form id="form1" runat="server">
        <table width ="60%">
            <tr>
                <td>To</td>
                <td><asp:Label ID="To" runat="server" Text="Ak.Abdul.Alim@gmail.com"></asp:Label></td>
            </tr>
            <tr>
                <td>From</td>
                <td><asp:TextBox ID="From" runat="server" class="form-control" Text="Your Email"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Subject</td>
                <td><asp:TextBox ID="Subject" runat="server" class="form-control" Text="Subject"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Body</td>
                <td><asp:TextBox ID="Body" runat="server" class="form-control" Text="This is the body of the text" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="Send" runat="server" class="btn btn-primary" Text="Send" OnClick="Send_Click" /></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label ID="Status" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
    </form>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">
</asp:Content>
