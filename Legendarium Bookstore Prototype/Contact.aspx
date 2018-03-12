<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Legendarium_Bookstore_Prototype.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    LEGENDARIUM - Contact
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content1" runat="server">

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content2" runat="server">
<div class="col-sm-2">
    Legendarium,<br />
    Plaza Abdul Razak,<br />
    Jalan Laksamana Abdul Razak,<br />
    Bandar Seri Begawan,<br />
    BA171,<br />
    Brunei Darussalam.<br /><br />

    Tel: +673-8629129
</div>

<!-- GOOGLE MAP -->
<div class="col-sm-6">
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15901.285864535696!2d114.9316692!3d4.8857309!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcacd96016959ec39!2sLaksamana+College+of+Business!5e0!3m2!1sen!2sbn!4v1520763243809" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>

<!-- CONTACT FORM -->
        <div class="col-sm-4">
    <form id="form1" runat="server">
        
                Email to us at:<br /><asp:Label ID="To" runat="server" Text="Ak.Abdul.Alim@gmail.com"></asp:Label><br /><br />
                Your Email<br /><asp:TextBox ID="From" runat="server" class="form-control" Text="Your Email" OnTextChanged="From_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFrom" runat="server" ControlToValidate="From" Display="None" ErrorMessage="Email is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="ValidEmailCheck" runat="server" ControlToValidate="From" ErrorMessage="Not a valid e-mail." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                Subject<br /><asp:TextBox ID="Subject" runat="server" class="form-control" Text="Subject" OnTextChanged="Subject_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredSubject" runat="server" ControlToValidate="Subject" Display="None" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                Message<br /><asp:TextBox ID="Body" runat="server" class="form-control" Text="This is the body of the text" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredBody" runat="server" ControlToValidate="Body" Display="None" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <br /><asp:Button ID="Send" runat="server" class="btn btn-primary" Text="Send" OnClick="Send_Click" />
                <br /><asp:Label ID="Status" runat="server" Text=""></asp:Label>

        <br />

    </form>
        </div>

</asp:Content>
