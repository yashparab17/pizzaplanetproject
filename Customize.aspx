<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Customize.aspx.cs" Inherits="Planet_Pizza_Project.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container customize">
        <div class="title">
            <h1>Customize</h1>
        </div>
        <div class="customizeflex">
            <div class="customizelabels">
                <asp:Label ID="TypeLabel" runat="server" Text="Type"></asp:Label>
                <asp:Label ID="SizeLabel" runat="server" Text="Size"></asp:Label>
                <asp:Label ID="CrustLabel" runat="server" Text="Crust"></asp:Label>
                <asp:Label ID="ToppingsLabel" runat="server" Text="Toppings"></asp:Label>
            </div>
            <div class="customizecontrols">
                <asp:RadioButtonList ID="TypeList" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>New York Style</asp:ListItem>
                    <asp:ListItem>Deep Dish</asp:ListItem>
                    <asp:ListItem>Cheese Burst</asp:ListItem>
                    <asp:ListItem>Burnt</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RadioButtonList ID="SizeList" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Small (8 Inches)</asp:ListItem>
                    <asp:ListItem>Medium (12 Inches)</asp:ListItem>
                    <asp:ListItem>Large (18 Inches)</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RadioButtonList ID="CrustList" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Hand Tossed</asp:ListItem>
                    <asp:ListItem>Thin Crust</asp:ListItem>
                    <asp:ListItem>Cheese Crust</asp:ListItem>
                </asp:RadioButtonList>
                <asp:CheckBoxList ID="ToppingsList" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Pepperoni</asp:ListItem>
                    <asp:ListItem>Onions</asp:ListItem>
                    <asp:ListItem>Garlic</asp:ListItem>
                    <asp:ListItem>Jalapeno</asp:ListItem>
                    <asp:ListItem>Chicken</asp:ListItem>
                    <asp:ListItem>Mushrooms</asp:ListItem>
                    <asp:ListItem>Anchovies</asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div class="customizeimage">
                <div class="customizeimagerelative">
                    <asp:Image ID="TypeNYS" runat="server" ImageUrl="~/images/pizzas/pizza1.png"/>
                    <asp:Image ID="TypeDD" runat="server" ImageUrl="~/images/pizzas/pizza2.png"/>
                    <asp:Image ID="TypeCB" runat="server" />
                    <asp:Image ID="TypeBurnt" runat="server" />
                    <asp:Image ID="CrustHT" runat="server" />
                    <asp:Image ID="CrustThin" runat="server" />
                    <asp:Image ID="CrustCheese" runat="server" />
                    <asp:Image ID="ToppingP" runat="server" />
                    <asp:Image ID="ToppingO" runat="server" />
                    <asp:Image ID="ToppingG" runat="server" />
                    <asp:Image ID="ToppingJ" runat="server" />
                    <asp:Image ID="ToppingC" runat="server" />
                    <asp:Image ID="ToppingM" runat="server" />
                    <asp:Image ID="ToppingA" runat="server" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
