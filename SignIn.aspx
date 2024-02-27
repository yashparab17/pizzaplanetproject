<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Planet_Pizza_Project.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container signup">
        <div class="title">
            <h1>Sign In</h1>
        </div>
        <div class="signingrid">
            <asp:Label ID="Label1" runat="server" Text="Email ID" CssClass="validatelabel"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email ID is required." CssClass="validate"></asp:RequiredFieldValidator>
            <asp:Label ID="Label2" runat="server" Text="Password" CssClass="validatelabel"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password is required." CssClass="validate"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" CssClass="workbutton signingridbutton" />
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>
