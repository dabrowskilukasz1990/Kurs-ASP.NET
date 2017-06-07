<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div>
    <h1>Login Page</h1>
    <form id="form2" runat="server">
    Login_ :
    <asp:TextBox ID="txtLogin" runat="server" /><br />
    <br />
    Hasło_ :
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"/><br />
    <br />
    <asp:CheckBox ID="chkPersist" runat="server" Text="Zapamiętaj mnie w ciasteczkach" /><br />
    <br />
    <asp:Button ID="btnLog" runat="server" Text="Zaloguj" OnClick="btnLog_Click" Width="100px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Create.aspx" Text="Zarejestruj się !" Width="100px" />
        <br />
        <br />
        <asp:Label ID="LabelError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
    </form>
    </div>
</body>
</html>
