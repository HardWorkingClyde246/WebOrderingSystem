﻿<%@ Page Language="C#" MasterPageFile="~/Site1.Master" CodeBehind="CartView.aspx.cs" Inherits="Web_Assignment_2.CartView" %>



<asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">

    <div>
        <asp:GridView ID="GridViewCart" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceOrders">
            <Columns>
                <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            </Columns>
        </asp:GridView>
        
    
        <asp:SqlDataSource ID="SqlDataSourceOrders" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringA %>" SelectCommand="select MenuItem.MenuItemLabel as ItemName, MenuItem.Price, OrderDetails.Quantity
from OrderDetails
join MenuItem on MenuItem.MenuItemID = OrderDetails.MenuItemID
where OrderDetails.OrderID = @oid">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="oid" SessionField="ssOrderID" />
            </SelectParameters>
        </asp:SqlDataSource>
        
    
    </div>

    <div>
        <asp:Label ID="lblTotalPrice" runat="server" Text=""></asp:Label>
    </div>

</asp:Content>


