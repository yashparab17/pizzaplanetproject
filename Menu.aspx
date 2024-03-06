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
            <asp:DataList ID="VegDataList" runat="server" RepeatDirection="Horizontal" RepeatColumns="5">
                <ItemTemplate>
                    <div class="pizzaitem">
                        <asp:Image ID="PizzaImage" runat="server" ImageUrl='<%# Eval("imagepath") %>' />
                        <asp:Label ID="PizzaLabel" runat="server" Text='<%# Eval("pizzaName") + " Pizza" %>' CssClass="pizzalabel"></asp:Label>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# "Rs. " + Eval("pizzaPrice") %>' CssClass="pizzalabel"></asp:Label>
                        <asp:Button ID="AddToCartPizzaButton" runat="server" Text="Add to Cart" CssClass="workbutton" CommandArgument='<%# Eval("id") %>' OnClick="AddToCartPizzaButton_Click" />
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div class="nonvegpizzatitle">
            <h1>Non-Vegetarian Pizzas</h1>
        </div>
        <div class="pizzaflex">
            <asp:DataList ID="NonVegDataList" runat="server" RepeatDirection="Horizontal" RepeatColumns="5">
                <ItemTemplate>
                    <div class="pizzaitem">
                        <asp:Image ID="PizzaImage" runat="server" ImageUrl='<%# Eval("imagepath") %>' />
                        <asp:Label ID="PizzaLabel" runat="server" Text='<%# Eval("pizzaName") + " Pizza" %>' CssClass="pizzalabel"></asp:Label>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# "Rs. " + Eval("pizzaPrice") %>' CssClass="pizzalabel"></asp:Label>
                        <asp:Button ID="AddToCartPizzaButton" runat="server" Text="Add to Cart" CssClass="workbutton" CommandArgument='<%# Eval("id") %>' OnClick="AddToCartPizzaButton_Click" />
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div class="sidestitle">
            <h1>Sides</h1>
        </div>
        <div class="pizzaflex">
            <asp:DataList ID="SidesDataList" runat="server" RepeatDirection="Horizontal" RepeatColumns="5">
                <ItemTemplate>
                    <div class="pizzaitem">
                        <asp:Image ID="SidesImage" runat="server" ImageUrl='<%# Eval("imagepath") %>' />
                        <asp:Label ID="SidesLabel" runat="server" Text='<%# Eval("sideName") %>' CssClass="pizzalabel"></asp:Label>
                        <asp:Label ID="SidesPriceLabel" runat="server" Text='<%# "Rs. " + Eval("sidePrice") %>' CssClass="pizzalabel"></asp:Label>
                        <asp:Button ID="AddToCartSideButton" runat="server" Text="Add to Cart" CssClass="workbutton" CommandArgument='<%# Eval("id") %>' OnClick="AddToCartSideButton_Click"/>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
