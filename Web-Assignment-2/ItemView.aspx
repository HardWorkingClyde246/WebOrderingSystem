<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ItemView.aspx.cs" Inherits="Web_Assignment_2.Catalogue" %>

<asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">

    <div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style11">Food Name:</td>
                <td class="auto-style12">
                    <asp:Label ID="lblFoodName" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style8">Food Description</td>
                <td class="auto-style9">
                    <asp:Label ID="lblFoodDesc" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:DropDownList ID="ddlQuantity" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Price</td>
                <td class="auto-style7">
                    <asp:Label ID="lblFoodPrice" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnBack" runat="server" Text="Back" PostBackUrl="~/MenuView.aspx"  />
                    <asp:Button ID="btnAdd" runat="server" Text="Add To Cart" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>



</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 114px;
        }
        .auto-style2 {
            width: 769px;
        }
        .auto-style6 {
            width: 20%;
        }
        .auto-style7 {
            width: 62%;
        }
        .auto-style8 {
            width: 20%;
            height: 158px;
        }
        .auto-style9 {
            width: 62%;
            height: 158px;
        }
        .auto-style10 {
            height: 158px;
        }
        .auto-style11 {
            width: 20%;
            height: 35px;
        }
        .auto-style12 {
            width: 62%;
            height: 35px;
        }
        .auto-style13 {
            height: 35px;
        }
    </style>
</asp:Content>

