<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Web_Assignment_2.category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <asp:GridView ID="GridViewCategory" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceCat" HorizontalAlign="Left">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
            <asp:BoundField DataField="CategoryDescription" HeaderText="CategoryDescription" SortExpression="CategoryDescription" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSourceCat" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringA %>" SelectCommand="SELECT [CategoryName], [CategoryDescription] FROM [Category]"></asp:SqlDataSource>

</div>


</asp:Content>
