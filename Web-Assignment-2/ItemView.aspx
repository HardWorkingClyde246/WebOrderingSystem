<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ItemView.aspx.cs" Inherits="Web_Assignment_2.Catalogue" %>

<asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">

    <div>
        <table style="width: 100%;">
            <tr>
                <td>&nbsp;Name of Item 1</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Picture of item 1</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="ddlQuantity" runat="server" Width="99px">
                        <asp:ListItem Value="0"></asp:ListItem>
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                    </asp:DropDownList></td>
                <td>
                    <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>



</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 315px;
        }
    </style>
</asp:Content>

