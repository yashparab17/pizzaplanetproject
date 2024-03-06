<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Planet_Pizza_Project.SignUp" %>

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
        <source src="/background/stars.webm" type="video/webm" />
    </video>
    <form id="form1" runat="server">
        <div class="container signup">
            <div class="title">
                <h1>Sign Up</h1>
            </div>
            <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
                <asp:View ID="View1" runat="server">
                    <div class="signupgrid">
                        <asp:Label ID="NameLabel" runat="server" Text="Name (Full Name)" CssClass="validatelabel"></asp:Label>
                        <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Name is required." CssClass="validate"></asp:RequiredFieldValidator>
                        <div></div>
                        <asp:Label ID="EmailLabel" runat="server" Text="Email ID (will be used for Sign In)" CssClass="validatelabel"></asp:Label>
                        <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email ID is required." CssClass="validate"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email ID must be valid!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="validate additionalvalidator"></asp:RegularExpressionValidator>
                        <asp:Label ID="PasswordLabel" runat="server" Text="Password" CssClass="validatelabel"></asp:Label>
                        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Password is required." CssClass="validate"></asp:RequiredFieldValidator>
                        <div></div>
                        <asp:Label ID="ConfirmPasswordLabel" runat="server" Text="Confirm Password" CssClass="validatelabel"></asp:Label>
                        <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPasswordTextBox" ErrorMessage="Confirm Password is required." CssClass="validate"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" ErrorMessage="Passwords do not match!" CssClass="validate additionalvalidator"></asp:CompareValidator>
                        <asp:Label ID="MobileLabel" runat="server" Text="Mobile Number" CssClass="validatelabel"></asp:Label>
                        <asp:TextBox ID="MobileTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="MobileTextBox" ErrorMessage="Mobile Number is required." CssClass="validate"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="MobileTextBox" ErrorMessage="Mobile Number must be valid!" ValidationExpression="\d{10}" CssClass="validate additionalvalidator"></asp:RegularExpressionValidator>
                        <asp:Label ID="AddressLabel" runat="server" Text="Address" CssClass="validatelabel"></asp:Label>
                        <asp:TextBox ID="AddressTextBox" runat="server" TextMode="Multiline"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="AddressTextBox" ErrorMessage="Address is required." CssClass="validate"></asp:RequiredFieldValidator>
                        <div></div>
                        <asp:Button ID="SignUpButton" runat="server" Text="Sign Up" OnClick="SignUpButton_Click" CssClass="workbutton signupgridbutton" />
                        <asp:Label ID="AlreadyExistsLabel" runat="server" CssClass="validate"></asp:Label>
                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <div class="signupflex">
                        <asp:Label ID="Status" runat="server"></asp:Label>
                        <asp:Button ID="SignInButton" runat="server" Text="Sign In" OnClick="SignInButton_Click" CssClass="workbutton" />
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
