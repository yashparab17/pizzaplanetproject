﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Planet_Pizza_Project.WebForm2" %>

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
            <asp:DataList ID="VegDataList" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div class="pizzaitem">
                        <asp:Image ID="PizzaImage" runat="server" ImageUrl='<%# Eval("imagepath") %>' />
                        <asp:Label ID="PizzaLabel" runat="server" Text='<%# Eval("name") + " Pizza" %>' CssClass="pizzalabel"></asp:Label>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# "Rs. " + Eval("price") %>' CssClass="pizzalabel"></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div class="nonvegpizzatitle">
            <h1>Non-Vegetarian Pizzas</h1>
        </div>
        <div class="pizzaflex">
            <asp:DataList ID="NonVegDataList" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div class="pizzaitem">
                        <asp:Image ID="PizzaImage" runat="server" ImageUrl='<%# Eval("imagepath") %>' />
                        <asp:Label ID="PizzaLabel" runat="server" Text='<%# Eval("name") + " Pizza" %>' CssClass="pizzalabel"></asp:Label>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# "Rs. " + Eval("price") %>' CssClass="pizzalabel"></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div class="sidestitle">
            <h1>Sides</h1>
        </div>
        <div class="pizzaflex">
            <asp:DataList ID="SidesDataList" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div class="pizzaitem">
                        <asp:Image ID="SidesImage" runat="server" ImageUrl='<%# Eval("imagepath") %>' />
                        <asp:Label ID="SidesLabel" runat="server" Text='<%# Eval("name") %>' CssClass="pizzalabel"></asp:Label>
                        <asp:Label ID="SidesPriceLabel" runat="server" Text='<%# "Rs. " + Eval("price") %>' CssClass="pizzalabel"></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
