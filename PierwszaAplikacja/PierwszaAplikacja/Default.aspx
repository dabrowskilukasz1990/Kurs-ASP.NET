<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PierwszaAplikacja.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="LabelImie" runat="server" Text="Podaj Imię"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBoxImie" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="LabelNaziwsko" runat="server" Text="Podaj Nazwisko"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBoxNazwisko" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="ButtonWyslij" runat="server" OnClick="ButtonWynik_Click" Text="Wyślij" />
            <br />
            <br />
            <br />
            <asp:Label ID="LabelWynik" runat="server"></asp:Label>

        </div>
</body>
</html>

<%--Sepracja kodu:

<script type="text/C#" runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        var tekst = "To jest separator kodu";
        Label1.Tekst = tekst;


        <%@ Page Language="C#" AutoEventWireup="true">%> //Pierwsza linijka musi tak wyglądać
    }



</script>--%>

