<%@ Page Language="C#" MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="addmenuitem.aspx.cs" Inherits="Web_Assignment_2.Admin.addmenuitem" %>



<asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">
    
    <div>

        <asp:GridView ID="GridViewMenuItem" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="itemID" HeaderText="itemID" SortExpression="itemID" />
                <asp:BoundField DataField="itemLabel" HeaderText="itemLabel" SortExpression="itemLabel" />
                <asp:BoundField DataField="itemDescription" HeaderText="itemDescription" SortExpression="itemDescription" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="categoryID" HeaderText="categoryID" SortExpression="categoryID" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringA %>" SelectCommand="SELECT * FROM [MenuItem]"></asp:SqlDataSource>

    </div>


        <div>

            <table style="width: 100%;">
                <tr>
                    <td>Add new item into menu</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Item ID</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtItemID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Category ID</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtCatID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Item Lable</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtItemLabel" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Item Description</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtItemDesc" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Item Price</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtItemPrice" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td aria-expanded="undefined">
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" PostBackUrl="~/Admin/addmenuitem.aspx" />
                    </td>
                </tr>
            </table>

        </div>
   
 </asp:Content>