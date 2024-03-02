<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Planet_Pizza_Project.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container signup">
        <div class="title">
            <h1>Sign In</h1>
        </div>
        <div class="signingrid">
            <asp:Label ID="EmailLabel" runat="server" Text="Email ID" CssClass="validatelabel"></asp:Label>
            <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email ID is required." CssClass="validate"></asp:RequiredFieldValidator>
            <asp:Label ID="PasswordLabel" runat="server" Text="Password" CssClass="validatelabel"></asp:Label>
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Password is required." CssClass="validate"></asp:RequiredFieldValidator>
            <asp:Button ID="SignIn" runat="server" Text="Sign In" OnClick="SignIn_Click" CssClass="workbutton signingridcol" />
            <asp:Label ID="Status" runat="server" CssClass="signingridcol"></asp:Label>
        </div>
    </div>
</asp:Content>
