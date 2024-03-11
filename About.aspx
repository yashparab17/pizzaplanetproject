<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Planet_Pizza_Project.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container about">
        <div class="title">
            <h1>About Us</h1>
        </div>
        <div class="abouttextleft">
            <p>We are a new startup committed to delivering the best quality pizzas all across the galaxy, with customization options and a wide-variety of pizzas to choose from so you never get tired of the taste.</p>
        </div>
        <asp:Image ID="SpinningLogo" runat="server" ImageUrl="~/images/logonotext.png" CssClass="spinninglogo"/>
        <div class="abouttextright">
            <p>We don't have any social media sites at the moment, but you can contact us via email: pizzaplanet@gmail.com</p>
        </div>
    </div>
</asp:Content>
