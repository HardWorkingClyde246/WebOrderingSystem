<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_Assignment_2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Login</title>
    <style>
 body {
            font-family: Arial, sans-serif;
            background-image: url('img/bg.jpg'); 
            background-size: cover;
            background-repeat: no-repeat; 
            background-position: center center; 
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
</head>
<body>
    <form id="form2" runat="server">
        <div class="login-container">
            <asp:Login ID="Login2" runat="server" DestinationPageUrl="~/Home.aspx" 
                BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                Font-Size="Medium" ForeColor="#333333" Height="179px" Width="381px">
                
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Registration</asp:HyperLink>
        </div>
    </form>
</body>
</html>
