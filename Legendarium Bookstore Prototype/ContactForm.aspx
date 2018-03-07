<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactForm.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.ContactForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">

    <form id="form1" runat="server">
<p>

A contact form that collect at minium a user's name, email address and a message. suitable validation should be in place. the system must send this message to an email address.
</p>

    <h3>Profile</h3>
    <table style="width: 653px; height: 176px"><tr><td>Username : Esparigus</td></tr>
        <tr><td>Email Address : Chichichichibebebey@hotmail.com</td></tr>
        
        <tr><td style="height: 144px">Messages : No Messages
            </td></tr>
        </table>
            <asp:Label ID="txtSubject" runat="server" Text="Subject"></asp:Label>

        <br/>
            <asp:Label ID="txtBody" runat="server" Text="Body"></asp:Label><br/>
            <asp:TextBox ID="txtboxBody" runat="server"  Width="278px" TextMode ="MultiLine"> </asp:TextBox><br/>
        <asp:Button ID="Btnsendemail" runat="server" Text="Send Email" Height="36px" Width="253px" OnClick="Btnsendemail_Click" />
        <br />
        <asp:Literal ID="LitResult" runat="server"></asp:Literal>
        <br/>
        <br/>
    </form>

</asp:Content>
