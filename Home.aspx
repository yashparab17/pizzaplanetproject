<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Planet_Pizza_Project.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container intro">
        <h1>Welcome to Planet Pizza!</h1>
        <h2>We serve pizzas across the galaxy.</h2>
    </div>
    <div class="container deals">
        <div class="title">
            <h1>Today's Deals</h1>
        </div>
        <div class="dealsad">
            <asp:AdRotator ID="Deal1" runat="server" CssClass="adcontainer" AdvertisementFile="AdRotator.xml"/>
        </div>
    </div>
</asp:Content>
