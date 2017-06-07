<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    <asp:Label ID="lblUserInfo" runat="server" Text="Label" /><br />
    <br />
    <asp:Button ID="btnLogOut" runat="server" Text="Wyloguj" OnClick="btnLogOut_Click" />
    
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    
    </div>
    </form>
</body>
</html>
