<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ItemView.aspx.cs" Inherits="Web_Assignment_2.Catalogue" %>

<asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">

    <div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">Food Name:</td>
                <td class="auto-style2">
                    <asp:Label ID="lblFoodName" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Food Description</td>
                <td class="auto-style2">
                    <asp:Label ID="lblFoodDesc" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
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
                <td class="auto-style1">Price</td>
                <td class="auto-style2">
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
    </style>
</asp:Content>

