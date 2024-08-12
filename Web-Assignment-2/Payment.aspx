<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            width: 313px;
        }
        .auto-style3 {
            height: 22px;
            width: 313px;
        }
        .auto-style4 {
            height: 21px;
            width: 313px;
        }
        .auto-style5 {
            height: 21px;
        }
        .auto-style6 {
            height: 20px;
            width: 313px;
        }
        .auto-style7 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">   
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">Payment
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Delivery address:&nbsp;
                    <asp:TextBox ID="PaymentAdLine1txt" runat="server" Width="181px"></asp:TextBox>
                </td>
                <td class="auto-style1">Order summary</td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">Note to rider:
                    <asp:TextBox ID="PaymentNotetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="PaymentOrderlbl" runat="server"></asp:Label>
                    <br />
                    ___________________</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">Subtotal:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Subtotallbl" runat="server"></asp:Label>
                    <br />
                    Delivery:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Deliverylbl" runat="server"></asp:Label>
                    <br />
                    Discount:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -
                    <asp:Label ID="PaymentDiscountlbl" runat="server"></asp:Label>
                    <br />
                    ____________________________________________<br />
                    Total:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RM
                    <asp:Label ID="PaymentTotallbl" runat="server"></asp:Label>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="PaymentSavebtn" runat="server" Text="Save and continue" />
                </td>
                <td class="auto-style5">
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Personal details</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="PaymentPersonallbl" runat="server"></asp:Label>
                    </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="PaymentPersonalbtn" runat="server" Text="Edit" />
                </td>
                <td class="auto-style5">
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
