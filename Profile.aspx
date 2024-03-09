<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Planet_Pizza_Project.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container profile">
        <div class="title">
            <h1>Profile Details</h1>
        </div>
        <div class="user">
            <div class="photo">
                <asp:Image ID="ProfilePhoto" runat="server" ImageUrl="~/images/pfp.png" CssClass="pfp" />
            </div>
            <div class="details">
                <asp:Label ID="DetailsName" runat="server" CssClass="profilelabel"></asp:Label>
                <asp:Label ID="DetailsEmail" runat="server" CssClass="profilelabel"></asp:Label>
                <asp:Label ID="DetailsMobile" runat="server" CssClass="profilelabel"></asp:Label>
                <asp:Label ID="DetailsAddress" runat="server" CssClass="profilelabel"></asp:Label>
            </div>
        </div>
        <div class="buttons">
            <asp:Button ID="UpdateButton" runat="server" Text="Update Details" CssClass="workbutton" OnClick="UpdateButton_Click" />
        </div>
    </div>
    <div id="UpdateDetailsDiv" class="container profile" runat="server">
        <div class="title">
            <h1>Update Details</h1>
        </div>
        <div class="updatedetails">
            <asp:Label ID="UpdateName" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="UpdateNameTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="UpdateEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="UpdateEmailTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="UpdatePassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="UpdatePasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Label ID="UpdateConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="UpdateConfirmPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Label ID="UpdateMobile" runat="server" Text="Mobile Number"></asp:Label>
            <asp:TextBox ID="UpdateMobileTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="UpdateAddress" runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="UpdateAddressTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:Button ID="SaveUpdateDetails" runat="server" Text="Save Updated Details" CssClass="workbutton savedetailsbutton" OnClick="SaveUpdateDetails_Click" />
        </div>
    </div>
</asp:Content>
