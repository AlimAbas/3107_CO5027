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
    <div class="row">
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

    <style>
      #map {
        height: 100%;
      }
    </style>

    <div id="map"></div>
<script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: { lat: 4.885731, lng: 114.9316696},
          zoom: 18
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDWMTbuHGGlYMOQ1Yx65n6htExXoTCpmC0&callback=initMap"
    async defer></script>
</div>

<!-- CONTACT FORM -->
        <div class="col-sm-4">
    <form id="form1" runat="server">
        
                Email to us at:<br /><b><asp:Label ID="To" runat="server" Text="alimabas.testmail@gmail.com"></asp:Label></b><br /><hr />

                Email<br /><asp:TextBox ID="From" runat="server" class="form-control" Text="Your Email" OnTextChanged="From_TextChanged"></asp:TextBox>
                <asp:RegularExpressionValidator ID="ValidEmailCheck" runat="server" ControlToValidate="From" ErrorMessage="Not a valid e-mail." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFrom" runat="server" ControlToValidate="From" Display="None" ErrorMessage="Email is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                Password<br /><asp:TextBox ID="Password" runat="server" class="form-control" TextMode="Password" Text="Your Email" OnTextChanged="From_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="Password" Display="None" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                Subject<br /><asp:TextBox ID="Subject" runat="server" class="form-control" Text="" OnTextChanged="Subject_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredSubject" runat="server" ControlToValidate="Subject" Display="None" ErrorMessage="Subject is a required field." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                Message<br /><asp:TextBox ID="Body" runat="server" class="form-control" Text="" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredBody" runat="server" ControlToValidate="Body" Display="None" ErrorMessage="Message is a required field." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                
                <br /><asp:Button ID="Send" runat="server" class="btn btn-primary" Text="Send" OnClick="Send_Click" />
                <br /><asp:Literal ID="Status" runat="server"></asp:Literal>

        <br />

    </form>
        </div>
    </div>
</asp:Content>
