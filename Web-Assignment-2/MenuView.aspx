<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MenuView.aspx.cs" Inherits="Web_Assignment_2.WebForm1" %>

<asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">
    
    <div>
        <asp:GridView ID="GridViewCategory" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CategoryID" DataSourceID="CatData" SelectedIndex="1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" SortExpression="CategoryID" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="CatData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringA %>" SelectCommand="SELECT CategoryID, [CategoryName] FROM [Category]"></asp:SqlDataSource>

    </div>

        <div> 
                
        

        <asp:DataList ID="dlFood" runat="server" DataSourceID="FoodData" HorizontalAlign="Right" RepeatColumns="5">
            <ItemTemplate>
                Food Label:
                <asp:Label ID="Food_LabelLabel" runat="server" Text='<%# Eval("[Food Label]") %>' />
                <br />
                FoodDescription:
                <asp:Label ID="FoodDescriptionLabel" runat="server" Text='<%# Eval("FoodDescription") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="FoodData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringA %>" SelectCommand="SELECT Food.[Food Label], Food.FoodDescription, Food.Price FROM Category INNER JOIN Food ON Category.CategoryID = Food.CategoryID
WHERE Food.CategoryID = @catID">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridViewCategory" DefaultValue="1" Name="catID" PropertyName="SelectedValue" />
            </SelectParameters>
            </asp:SqlDataSource>
        

    




        </div>
  

</asp:Content>
