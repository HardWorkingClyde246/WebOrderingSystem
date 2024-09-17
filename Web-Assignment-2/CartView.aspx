<%@ Page Language="C#" MasterPageFile="~/Site1.Master" CodeBehind="CartView.aspx.cs" Inherits="Web_Assignment_2.CartView" %>



<asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">

    <div>
        <asp:GridView ID="GridViewOrder" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="itemLabel" HeaderText="itemLabel" SortExpression="itemLabel" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringA %>" SelectCommand="SELECT MenuItem.itemLabel, MenuItem.price, OrderDetails.quantity FROM Category INNER JOIN MenuItem ON Category.CategoryID = MenuItem.categoryID INNER JOIN OrderDetails ON Category.CategoryID = OrderDetails.categoryID INNER JOIN Orders ON OrderDetails.orderID = Orders.orderID INNER JOIN [User] ON Orders.userID = [User].userID WHERE (Orders.userID = @userID) AND (Orders.orderID = @orderID)">
            <SelectParameters>
                <asp:SessionParameter Name="userID" SessionField="userID" />
                <asp:SessionParameter Name="orderID" SessionField="orderID" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table style="width: 100%;">
            <tr>
                <td>Total Price</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblTotalPrice" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnCheckout" runat="server" OnClick="OrderCheckoutbtn_Click" Text="Button" />
                </td>
            </tr>
        </table>

    
    </div>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    


</asp:Content>

