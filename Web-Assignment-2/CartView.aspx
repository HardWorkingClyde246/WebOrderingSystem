<%@ Page Language="C#" MasterPageFile="~/Site1.Master" CodeBehind="CartView.aspx.cs" Inherits="Web_Assignment_2.CartView" %>



<asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">

    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Food name</td>
                <td><asp:Label ID="lblFoodLabel" runat="server" Text="Label"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Quantity</td>
                <td><asp:Label ID="lblQuantity" runat="server" Text="Label"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Price</td>
                <td><asp:Label ID="lblFoodPrice" runat="server" Text="Label"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Total Price</td>
                <td>&nbsp;</td>
                <td> <asp:Label ID="lblTotalPrice" runat="server" Text="Label"></asp:Label></td>
            </tr>
        </table>
        
    
    </div>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 148px;
        }
    </style>
</asp:Content>

