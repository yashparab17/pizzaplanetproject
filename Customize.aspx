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
                <asp:RadioButtonList ID="TypeList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="TypeList_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Value="1" Text="New York Style"></asp:ListItem>
                    <asp:ListItem Value="2" Text="Cheese Burst"></asp:ListItem>
                    <asp:ListItem Value="3" Text="Burnt"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RadioButtonList ID="SizeList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="SizeList_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Value="S" Text="Small (8 Inches)"></asp:ListItem>
                    <asp:ListItem Value="M" Text="Medium (12 Inches)"></asp:ListItem>
                    <asp:ListItem Value="L" Text="Large (18 Inches)"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RadioButtonList ID="CrustList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="CrustList_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Value="HT" Text="Hand Tossed"></asp:ListItem>
                    <asp:ListItem Value="TC" Text="Thin Crust"></asp:ListItem>
                    <asp:ListItem Value="CC" Text="Cheese Crust"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:CheckBoxList ID="ToppingsList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="ToppingsList_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Value="A" Text="Anchovies"></asp:ListItem>
                    <asp:ListItem Value="C" Text="Chicken"></asp:ListItem>
                    <asp:ListItem Value="J" Text="Jalapeno"></asp:ListItem>
                    <asp:ListItem Value="M" Text="Mushrooms"></asp:ListItem>
                    <asp:ListItem Value="P" Text="Pepperoni"></asp:ListItem>
                    <asp:ListItem Value="V" Text="Veggies"></asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div class="customizeimage" id="ImageDiv" runat="server">
                <asp:Image ID="TypeNY" runat="server" ImageUrl="~/images/customize/type1.png" CssClass="customizeimageabsolute" />
                <asp:Image ID="TypeCB" runat="server" ImageUrl="~/images/customize/type2.png" CssClass="customizeimageabsolute" />
                <asp:Image ID="TypeBR" runat="server" ImageUrl="~/images/customize/type3.png" CssClass="customizeimageabsolute" />
                <asp:Image ID="CrustHT" runat="server" ImageUrl="~/images/customize/crust1.png" CssClass="customizeimageabsolute" />
                <asp:Image ID="CrustTC" runat="server" ImageUrl="~/images/customize/crust2.png" CssClass="customizeimageabsolute" />
                <asp:Image ID="CrustCC" runat="server" ImageUrl="~/images/customize/crust3.png" CssClass="customizeimageabsolute" />
                <asp:Image ID="ToppingA" runat="server" ImageUrl="~/images/customize/topping1.png" CssClass="customizeimageabsolute"/>
                <asp:Image ID="ToppingC" runat="server" ImageUrl="~/images/customize/topping2.png" CssClass="customizeimageabsolute"/>
                <asp:Image ID="ToppingJ" runat="server" ImageUrl="~/images/customize/topping3.png" CssClass="customizeimageabsolute"/>
                <asp:Image ID="ToppingM" runat="server" ImageUrl="~/images/customize/topping4.png" CssClass="customizeimageabsolute"/>
                <asp:Image ID="ToppingP" runat="server" ImageUrl="~/images/customize/topping5.png" CssClass="customizeimageabsolute"/>
                <asp:Image ID="ToppingV" runat="server" ImageUrl="~/images/customize/topping6.png" CssClass="customizeimageabsolute"/>
            </div>
        </div>
        <asp:Label ID="CustomizedNameLabel" runat="server" Text="Name your Pizza!"></asp:Label>
        <asp:TextBox ID="CustomizedNameTextBox" runat="server"></asp:TextBox>
        <div>
            <asp:Label ID="PriceLabel" runat="server"></asp:Label>
        </div>
        <asp:Button ID="AddToCartButton" runat="server" Text="Add To Cart" CssClass="workbutton" OnClick="AddToCartButton_Click" />
    </div>
</asp:Content>
