<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MenuView.aspx.cs" Inherits="Web_Assignment_2.WebForm1" %>

<asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">

    
        <div> 
            <table style="width: 100%;">
                <tr>
                    <td>item 1</td>
                    <td>item 2</td>
                    <td>item 3</td>
                </tr>
                <tr>
                    <td>picture 1</td>
                    <td>picture 2</td>
                    <td>picture 3</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSelect1" runat="server" Text="Select" />
                    </td>
                    <td>
                        <asp:Button ID="btnSelect2" runat="server" Text="Select" />
                    </td>
                    <td>
                        <asp:Button ID="btnSelect3" runat="server" Text="Select" />
                    </td>
                </tr>
            </table>




        </div>
  

</asp:Content>
