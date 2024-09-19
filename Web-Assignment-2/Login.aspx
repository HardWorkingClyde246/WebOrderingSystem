<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Login.aspx.cs" Inherits="Web_Assignment_2.Login" %>




    

  <asp:Content ID="conten1"  ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">
      <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .login-container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
</style>
        <div class="login-container">
            <asp:Login ID="Login2" runat="server" DestinationPageUrl="~/Home.aspx" 
                BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                Font-Size="0.8em" ForeColor="#333333" Height="142px" Width="313px" OnAuthenticate="Login2_Authenticate">
                
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Registration</asp:HyperLink>
        </div>
    
          </asp:Content>