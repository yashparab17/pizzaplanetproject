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
            <div class="form-group">
                <asp:Label ID="UpdateName" runat="server" Text="Name" CssClass="validatelabel"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UpdateNameTextBox" ErrorMessage="Name is required." CssClass="validate"></asp:RequiredFieldValidator>
                <asp:TextBox ID="UpdateNameTextBox" runat="server" CssClass="form-row"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="UpdateEmail" runat="server" Text="Email" CssClass="validatelabel"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UpdateEmailTextBox" ErrorMessage="Email is required." CssClass="validate"></asp:RequiredFieldValidator>
                <asp:TextBox ID="UpdateEmailTextBox" runat="server" CssClass="form-row"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UpdateEmailTextBox" ErrorMessage="Email must be valid!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="validate additionalvalidator"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="UpdatePassword" runat="server" Text="Password" CssClass="validatelabel"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UpdatePasswordTextBox" ErrorMessage="Password is required." CssClass="validate"></asp:RequiredFieldValidator>
                <asp:TextBox ID="UpdatePasswordTextBox" runat="server" TextMode="Password" CssClass="form-row"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="UpdateConfirmPassword" runat="server" Text="Confirm Password" CssClass="validatelabel"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="UpdateConfirmPasswordTextBox" ErrorMessage="Confirm Password is required." CssClass="validate"></asp:RequiredFieldValidator>
                <asp:TextBox ID="UpdateConfirmPasswordTextBox" runat="server" TextMode="Password" CssClass="form-row"></asp:TextBox>

                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="UpdateConfirmPasswordTextBox" ControlToCompare="UpdatePasswordTextBox" ErrorMessage="Passwords do not match!" CssClass="validate additionalvalidator"></asp:CompareValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="UpdateMobile" runat="server" Text="Mobile Number" CssClass="validatelabel"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="UpdateMobileTextBox" ErrorMessage="Mobile Number is required." CssClass="validate"></asp:RequiredFieldValidator>
                <asp:TextBox ID="UpdateMobileTextBox" runat="server" CssClass="form-row"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="UpdateMobileTextBox" ErrorMessage="Mobile Number must be valid!" ValidationExpression="\d{10}" CssClass="validate additionalvalidator"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="UpdateAddress" runat="server" Text="Address" CssClass="validatelabel"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="UpdateAddressTextBox" ErrorMessage="Address is required." CssClass="validate"></asp:RequiredFieldValidator>
                <asp:TextBox ID="UpdateAddressTextBox" runat="server" TextMode="MultiLine" CssClass="form-row"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="SaveUpdateDetails" runat="server" Text="Save Updated Details" CssClass="workbutton signinbutton" OnClick="SaveUpdateDetails_Click" />
        <asp:Label ID="AlreadyExistsLabel" runat="server" CssClass="validate"></asp:Label>
    </div>
</asp:Content>
