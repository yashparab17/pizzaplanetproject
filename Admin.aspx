<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Planet_Pizza_Project.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container profile">
        <div class="title">
            <h1>Admin Control</h1>
        </div>
        <div class="title">
            <h1>View User Details</h1>
        </div>
        <div>
            <asp:GridView ID="UserDetailsGridView" runat="server" AutoGenerateColumns="false" CssClass="usergridview">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="User ID" />
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="email" HeaderText="Email ID" />
                    <asp:BoundField DataField="password" HeaderText="Password" />
                    <asp:BoundField DataField="mobile" HeaderText="Mobile Number" />
                    <asp:BoundField DataField="address" HeaderText="Address" />
                </Columns>
                <HeaderStyle Font-Bold="true" BackColor="#E8B68B" />
                <RowStyle BackColor="#FFFFFF" />
            </asp:GridView>
        </div>
        <div class="title">
            <h1>Add Pizza</h1>
        </div>

        <div class="updatedetails">
            <asp:Label ID="PizzaNameLabel" runat="server" Text="Pizza Name" CssClass="validatelabel"></asp:Label>
            <asp:TextBox ID="PizzaNameTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="PizzaPriceLabel" runat="server" Text="Pizza Price" CssClass="validatelabel"></asp:Label>
            <asp:TextBox ID="PizzaPriceTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="CheckVegLabel" runat="server" Text="Vegetarian?" CssClass="validatelabel"></asp:Label>
            <asp:RadioButtonList ID="CheckVegRadioButtonList" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Name="True" Value="True"></asp:ListItem>
                <asp:ListItem Name="False" Value="False"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="PizzaPhotoLabel" runat="server" Text="Upload Pizza Photo" CssClass="validatelabel"></asp:Label>
            <asp:FileUpload ID="PizzaPhotoUpload" runat="server" />
            <asp:Button ID="AddPizzaButton" runat="server" Text="Add Pizza" CssClass="workbutton savedetailsbutton" OnClick="AddPizzaButton_Click" />
            <asp:Label ID="StatusPizza" runat="server" CssClass="savedetailsbutton"></asp:Label>
        </div>
        <div class="title">
            <h1>Add Side</h1>
        </div>
        <div class="updatedetails">
            <asp:Label ID="SideNameLabel" runat="server" Text="Side Name" CssClass="validatelabel"></asp:Label>
            <asp:TextBox ID="SideNameTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="SidePriceLabel" runat="server" Text="Side Price" CssClass="validatelabel"></asp:Label>
            <asp:TextBox ID="SidePriceTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="SidePhotoLabel" runat="server" Text="Upload Side Photo" CssClass="validatelabel"></asp:Label>
            <asp:FileUpload ID="SidePhotoUpload" runat="server" />
            <asp:Button ID="AddSideButton" runat="server" Text="Add Side" CssClass="workbutton savedetailsbutton" OnClick="AddSideButton_Click" />
            <asp:Label ID="StatusSide" runat="server" CssClass="savedetailsbutton"></asp:Label>
        </div>
    </div>
</asp:Content>
