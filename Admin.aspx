<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Planet_Pizza_Project.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container profile">
        <div class="title">
            <h1>Admin Control</h1>
        </div>
        <div class="title">
            <h1>User Details</h1>
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
                    <asp:BoundField DataField="dateTime" HeaderText="Account Created" />
                </Columns>
                <HeaderStyle Font-Bold="true" BackColor="#E8B68B" />
                <RowStyle BackColor="#FFFFFF" />
            </asp:GridView>
        </div>
        <div class="title">
            <h1>Order Details</h1>
        </div>
        <div>
            <asp:GridView ID="OrderDetailsGridView" runat="server" AutoGenerateColumns="false" CssClass="usergridview">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Row ID" />
                    <asp:BoundField DataField="orderID" HeaderText="Order ID" />
                    <asp:BoundField DataField="receiverEmail" HeaderText="Receiver Email ID" />
                    <asp:BoundField DataField="itemName" HeaderText="Item Name" />
                    <asp:BoundField DataField="itemPrice" HeaderText="itemPrice" />
                    <asp:BoundField DataField="dateTime" HeaderText="Order Placed" />
                </Columns>
                <HeaderStyle Font-Bold="true" BackColor="#E8B68B" />
                <RowStyle BackColor="#FFFFFF" />
            </asp:GridView>
        </div>
        <div class="title">
            <h1>Add Pizza</h1>
        </div>
        <div class="updatedetails">
            <div class="form-group">
                <asp:Label ID="PizzaNameLabel" runat="server" Text="Pizza Name" CssClass="validatelabel"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PizzaNameTextBox" ErrorMessage="Pizza Name is required!" CssClass="validate" ValidationGroup="PizzaGroup"></asp:RequiredFieldValidator>
                <asp:TextBox ID="PizzaNameTextBox" runat="server" CssClass="form-row"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="PizzaPriceLabel" runat="server" Text="Pizza Price" CssClass="validatelabel"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PizzaPriceTextBox" ErrorMessage="Pizza Price is required!" CssClass="validate" ValidationGroup="PizzaGroup"></asp:RequiredFieldValidator>
                <asp:TextBox ID="PizzaPriceTextBox" runat="server" CssClass="form-row"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="PizzaPriceTextBox" ErrorMessage="Price must be between 0 to 500!" CssClass="validate" Type="Integer" MinimumValue="0" MaximumValue="500" ValidationGroup="PizzaGroup"></asp:RangeValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="CheckVegLabel" runat="server" Text="Vegetarian?" CssClass="validatelabel"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CheckVegRadioButtonList"  ErrorMessage="Please select one!" CssClass="validate" ValidationGroup="PizzaGroup"></asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="CheckVegRadioButtonList" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Name="True" Value="True"></asp:ListItem>
                    <asp:ListItem Name="False" Value="False"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <asp:Label ID="PizzaPhotoLabel" runat="server" Text="Upload Pizza Photo" CssClass="validatelabel"></asp:Label>
            <asp:FileUpload ID="PizzaPhotoUpload" runat="server" />
            <asp:Button ID="AddPizzaButton" runat="server" Text="Add Pizza" CssClass="workbutton savedetailsbutton" OnClick="AddPizzaButton_Click" ValidationGroup="PizzaGroup"/>
            <asp:Label ID="StatusPizza" runat="server" CssClass="savedetailsbutton"></asp:Label>
        </div>
        <div class="title">
            <h1>Add Side</h1>
        </div>
        <div class="updatedetails">
            <div class="form-group">
                <asp:Label ID="SideNameLabel" runat="server" Text="Side Name" CssClass="validatelabel"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SideNameTextBox" ValidationGroup="SideGroup"></asp:RequiredFieldValidator>
                <asp:TextBox ID="SideNameTextBox" runat="server" CssClass="form-row"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="SidePriceLabel" runat="server" Text="Side Price" CssClass="validatelabel"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="SidePriceTextBox" ValidationGroup="SideGroup"></asp:RequiredFieldValidator>
                <asp:TextBox ID="SidePriceTextBox" runat="server" CssClass="form-row"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="SidePriceTextBox" ErrorMessage="Price must be between 0 to 250!" CssClass="validate" Type="Integer" MinimumValue="0" MaximumValue="250" ValidationGroup="SideGroup"></asp:RangeValidator>
            </div>
            <asp:Label ID="SidePhotoLabel" runat="server" Text="Upload Side Photo" CssClass="validatelabel"></asp:Label>
            <asp:FileUpload ID="SidePhotoUpload" runat="server" />
            <asp:Button ID="AddSideButton" runat="server" Text="Add Side" CssClass="workbutton savedetailsbutton" OnClick="AddSideButton_Click" ValidationGroup="SideGroup" />
            <asp:Label ID="StatusSide" runat="server" CssClass="savedetailsbutton"></asp:Label>
        </div>
    </div>
</asp:Content>
