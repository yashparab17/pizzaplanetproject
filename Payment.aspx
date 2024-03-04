<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Planet_Pizza_Project.Payment" %>

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
        <div class="container payment">
            <div class="title">
                <h1>Payment</h1>
            </div>
            <asp:Label ID="ThankYouLabel" runat="server" Text="Thank you for ordering from Planet Pizza!" CssClass="thankyou"></asp:Label>
            <div class="title">
                <h1>Order Details</h1>
            </div>
            <asp:Label ID="OrderDetailsLabel" runat="server" CssClass="profilelabel"></asp:Label>
            <asp:Label ID="TotalAmountLabel" runat="server" CssClass="profilelabel"></asp:Label>
            <div class="title">
                <h1>User Details</h1>
            </div>
            <div class="details">
                <asp:Label ID="DetailsName" runat="server" CssClass="profilelabel"></asp:Label>
                <asp:Label ID="DetailsEmail" runat="server" CssClass="profilelabel"></asp:Label>
                <asp:Label ID="DetailsMobile" runat="server" CssClass="profilelabel"></asp:Label>
                <asp:Label ID="DetailsAddress" runat="server" CssClass="profilelabel"></asp:Label>
            </div>
            <div class="title">
                <h1>Feedback</h1>
            </div>
            <asp:Label ID="FeedbackLabel" runat="server" Text="Please provide us feedback, if any!" CssClass="profilelabel"></asp:Label>
            <asp:TextBox ID="FeedbackTextBox" runat="server" TextMode="MultiLine" CssClass="feedback"></asp:TextBox>
            <asp:Button ID="GoHomeButton" runat="server" Text="Go to Homepage" CssClass="workbutton" OnClick="GoHomeButton_Click"/>
        </div>
    </form>
</body>
</html>
