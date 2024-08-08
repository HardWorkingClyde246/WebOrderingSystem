<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MenuView.aspx.cs" Inherits="Web_Assignment_2.WebForm1" %>

<asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">

    
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
        <asp:SqlDataSource ID="FoodData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringA %>" ProviderName="<%$ ConnectionStrings:ConnectionStringA.ProviderName %>" SelectCommand="SELECT Food.[Food Label], Food.FoodDescription, Food.Price FROM Category INNER JOIN Food ON Category.CategoryID = Food.CategoryID"></asp:SqlDataSource>
        

    




        </div>
  

</asp:Content>
