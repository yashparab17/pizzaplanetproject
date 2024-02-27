<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Planet_Pizza_Project.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container signup">
        <div class="title">
            <h1>Sign Up</h1>
        </div>
        <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
            <asp:View ID="View1" runat="server">
                <div class="signupgrid">
                    <asp:Label ID="Label1" runat="server" Text="Name" CssClass="validatelabel"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name is required." CssClass="validate"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label2" runat="server" Text="Email ID (will be used for Sign In)" CssClass="validatelabel"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email ID is required." CssClass="validate"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label3" runat="server" Text="Password" CssClass="validatelabel"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password is required." CssClass="validate"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label4" runat="server" Text="Confirm Password" CssClass="validatelabel"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Confirm Password is required." CssClass="validate"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label5" runat="server" Text="Mobile Number" CssClass="validatelabel"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Mobile Number is required." CssClass="validate"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label6" runat="server" Text="Address" CssClass="validatelabel"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Multiline"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Address is required." CssClass="validate"></asp:RequiredFieldValidator>
                    <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" CssClass="workbutton signupgridbutton" />
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <div class="signupflex">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                    <asp:Button ID="Button2" runat="server" Text="Sign In" OnClick="Button2_Click" CssClass="workbutton" />
                </div>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
