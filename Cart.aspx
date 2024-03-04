<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Planet_Pizza_Project.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" href="modern-normalize.css" />
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
    <video autoplay muted loop class="videobg">
        <source src="/background/stars.webm" type="video/webm"/>
    </video>
    <form id="form1" runat="server">
        <div class="container cart">
            <div class="title">
                <h1>Cart</h1>
            </div>
            <asp:Label ID="NoItemsLabel" runat="server" Text="There are no items added yet!"></asp:Label>
            <asp:Button ID="GoBackButton" runat="server" Text="Go Back" CssClass="workbutton" OnClick="GoBackButton_Click" />
            <div class="cartflex" id="CartDiv" runat="server">
                <asp:DataList ID="CartDataList" runat="server" RepeatDirection="Vertical">
                    <ItemTemplate>
                        <div class="cartitem">
                            <asp:Image ID="ItemImage" runat="server" ImageUrl='<%# Eval("itemImage") %>' />
                            <asp:Label ID="ItemName" runat="server" Text='<%# Eval("itemName") %>' CssClass="cartlabel"></asp:Label>
                            <asp:Label ID="ItemPrice" runat="server" Text='<%# "Rs. " + Eval("itemPrice") %>' CssClass="cartlabel"></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="totalamount" id="AmountDiv" runat="server">
                <asp:Label ID="TotalAmountLabel" runat="server"></asp:Label>
            </div>
            <div class="cartbuttons" id="ButtonsDiv" runat="server">
                <asp:Button ID="ContinueButton" runat="server" Text="Continue Ordering" CssClass="workbutton" OnClick="ContinueButton_Click" />
                <asp:Button ID="PaymentButton" runat="server" Text="Proceed to Payment" CssClass="workbutton" OnClick="PaymentButton_Click"/>
            </div>
        </div>
    </form>
</body>
</html>
