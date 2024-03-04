<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="Planet_Pizza_Project.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container reviews">
        <div class="title">
            <h1>Reviews</h1>
        </div>
        <div class="reviewsflex">
            <asp:DataList ID="ReviewsDataList" runat="server" RepeatDirection="Vertical">
                <ItemTemplate>
                    <div class="reviewsitem">
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("name") %>' CssClass="reviewsname"></asp:Label>
                        <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("date") %>' CssClass="reviewsdatetime"></asp:Label>
                        <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("time") %>' CssClass="reviewsdatetime"></asp:Label>
                        <asp:Label ID="FeedbackLabel" runat="server" Text='<%# Eval("feedback") %>' CssClass="reviewsfeedback"></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
