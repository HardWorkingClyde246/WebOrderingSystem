﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web_Assignment_2.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:Button ID="btnViewMenu" runat="server" Text="View Menu" PostBackUrl="~/MenuView.aspx" />
        <asp:Button ID="btnRegister" runat="server" Text="Register" PostBackUrl="~/Registration.aspx"/>
        <asp:Button ID="btnLogin" runat="server" Text="Login" PostBackUrl="~/Login.aspx"/>
    </div>

</asp:Content>
