<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ItemView.aspx.cs" Inherits="Web_Assignment_2.Catalogue" %>

<asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">

    <div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">Food Name:</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Food Description</td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Price</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
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

