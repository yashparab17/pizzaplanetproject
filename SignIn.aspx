<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Planet_Pizza_Project.SignIn" %>

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
                <h1>Sign In</h1>
            </div>
            <div class="signingrid">
                <div class="form-group">
                    <asp:Label ID="EmailLabel" runat="server" Text="Email ID" CssClass="validatelabel"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email ID is required." CssClass="validate"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-row"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email ID must be valid!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="validate additionalvalidator"></asp:RegularExpressionValidator>
                </div>

                <div class="form-group">
                    <asp:Label ID="PasswordLabel" runat="server" Text="Password" CssClass="validatelabel"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Password is required." CssClass="validate"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" CssClass="form-row"></asp:TextBox>
                </div>
            </div>
            <asp:Button ID="SignInButton" runat="server" Text="Sign In" OnClick="SignInButton_Click" CssClass="workbutton signinbutton" />
            <asp:Label ID="Status" runat="server" CssClass="signinerror"></asp:Label>
        </div>
    </form>
</body>
</html>
