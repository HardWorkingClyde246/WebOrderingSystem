﻿<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MenuView.aspx.cs" Inherits="Web_Assignment_2.WebForm1" %>

<asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">
    
    <div>
        <asp:GridView ID="GridViewCategory" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CategoryID" DataSourceID="CatData" SelectedIndex="1" OnSelectedIndexChanged="GridViewCategory_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" SortExpression="CategoryID" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="CatData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringA %>" SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Category]"></asp:SqlDataSource>
        
    </div>

        <div> 
            <asp:Repeater ID="RepeaterFoodList" runat="server" DataSourceID="FoodData" OnItemCommand="RepeaterFoodList_ItemCommand">

                <ItemTemplate>
                    <asp:Label ID="FoodLabel" runat="server" Text='<%# Eval("itemLabel") %>' ></asp:Label>
                   
                    <br />
                    <asp:Label ID="FoodDescription" runat="server" Text='<%# Eval("itemDescription") %>' ></asp:Label>


                    <br />
                    <asp:Label ID="Price" runat="server" Text='<%# Eval("Price") %>' ></asp:Label>
                    <br />
                    <asp:Button ID="btnSelect" runat="server" Text="Select" OnClick="Selected"  />
                    <br />
                </ItemTemplate>


            </asp:Repeater>
        

        <asp:SqlDataSource ID="FoodData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringA %>" SelectCommand="SELECT MenuItem.[itemLabel], MenuItem.itemDescription, MenuItem.Price 
FROM Category INNER JOIN MenuItem ON Category.categoryID = MenuItem.categoryID
WHERE MenuItem.categoryID = @catID">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridViewCategory" DefaultValue="1" Name="catID" PropertyName="SelectedValue" />
            </SelectParameters>
            </asp:SqlDataSource>
        

    



            <asp:Label ID="lblTest" runat="server" Text=""></asp:Label>
        </div>
  

</asp:Content>
