<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ItemView.aspx.cs" Inherits="Web_Assignment_2.Catalogue" %>

<asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">

    <div>
        <table style="width: 100%;">
            <tr>
                <td>&nbsp;Name of Item 1</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Picture of item 1</td>
                <td>
                    <asp:DropDownList ID="ddlQuantity" runat="server"></asp:DropDownList></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>



</asp:Content>
