<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Planet_Pizza_Project.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container menu">
        <div class="title">
            <h1>Menu</h1>
        </div>
        <div class="vegpizzatitle">
            <h1>Vegetarian Pizzas</h1>
        </div>
        <div class="pizzaflex">
            <div class="pizzaitem">
                <image src="/images/pizzas/pizza1.png"></image>
                <asp:Label ID="PizzaLabel1" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
                <asp:Label ID="PriceLabel1" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
            </div>
            <div class="pizzaitem">
                <image src="/images/pizzas/pizza1.png"></image>
                <asp:Label ID="PizzaLabel2" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
                <asp:Label ID="PriceLabel2" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
            </div>
            <div class="pizzaitem">
                <image src="/images/pizzas/pizza1.png"></image>
                <asp:Label ID="PizzaLabel3" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
                <asp:Label ID="PriceLabel3" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
            </div>
            <div class="pizzaitem">
                <image src="/images/pizzas/pizza1.png"></image>
                <asp:Label ID="PizzaLabel4" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
                <asp:Label ID="PriceLabel4" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
            </div>
            <div class="pizzaitem">
                <image src="/images/pizzas/pizza1.png"></image>
                <asp:Label ID="PizzaLabel5" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
                <asp:Label ID="PriceLabel5" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
            </div>
        </div>
        <div class="nonvegpizzatitle">
            <h1>Non-Vegetarian Pizzas</h1>
        </div>
        <div class="pizzaflex">
            <div class="pizzaitem">
                <image src="/images/pizzas/pizza1.png"></image>
                <asp:Label ID="PizzaLabel6" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
                <asp:Label ID="PriceLabel6" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
            </div>
            <div class="pizzaitem">
                <image src="/images/pizzas/pizza1.png"></image>
                <asp:Label ID="PizzaLabel7" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
                <asp:Label ID="PriceLabel7" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
            </div>
            <div class="pizzaitem">
                <image src="/images/pizzas/pizza1.png"></image>
                <asp:Label ID="PizzaLabel8" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
                <asp:Label ID="PriceLabel8" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
            </div>
            <div class="pizzaitem">
                <image src="/images/pizzas/pizza1.png"></image>
                <asp:Label ID="PizzaLabel9" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
                <asp:Label ID="PriceLabel9" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
            </div>
            <div class="pizzaitem">
                <image src="/images/pizzas/pizza1.png"></image>
                <asp:Label ID="PizzaLabel10" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
                <asp:Label ID="PriceLabel10" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
            </div>
        </div>
        <div class="sidestitle">
            <h1>Sides</h1>
        </div>
        <div class="pizzaflex">
            <div class="pizzaitem">
                <image src="/images/pizzas/pizza1.png"></image>
                <asp:Label ID="SidesLabel1" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
                <asp:Label ID="SidesPriceLabel1" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
            </div>
            <div class="pizzaitem">
                <image src="/images/pizzas/pizza1.png"></image>
                <asp:Label ID="SidesLabel2" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
                <asp:Label ID="SidesPriceLabel2" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
            </div>
            <div class="pizzaitem">
                <image src="/images/pizzas/pizza1.png"></image>
                <asp:Label ID="SidesLabel3" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
                <asp:Label ID="SidesPriceLabel3" runat="server" Text="Label" CssClass="pizzalabel"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
