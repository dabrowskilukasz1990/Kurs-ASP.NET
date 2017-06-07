<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProstyFormularz.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 109px;
        }
        .auto-style3 {
            width: 109px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 109px;
            height: 137px;
        }
        .auto-style6 {
            height: 137px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Imię:</td>
                    <td>
                        <asp:TextBox ID="TextBoxImie" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxImie" ErrorMessage="Musisz podać Imię" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxImie" ErrorMessage="Podaj prawidłowe imię" ForeColor="#FF3300" ValidationExpression="^[a-zA-ZąćęłńóśźżĄĘŁŃÓŚŹŻ]{1,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nazwisko:</td>
                    <td>
                        <asp:TextBox ID="TextBoxNazwisko" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNazwisko" ErrorMessage="Musisz podać nazwisko" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxNazwisko" ErrorMessage="Podaj prawidłowe nazwisko" ForeColor="#FF3300" ValidationExpression="^[a-zA-ZąćęłńóśźżĄĘŁŃÓŚŹŻ]{1,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Województwo:</td>
                    <td>
                        <asp:DropDownList ID="DropDownListWojewodztwo" runat="server">
                            <asp:ListItem>Pomorskie</asp:ListItem>
                            <asp:ListItem>Śląskie</asp:ListItem>
                            <asp:ListItem>Kujawsko-Pomorskie</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Miasto:</td>
                    <td>
                        <asp:TextBox ID="TextBoxMiasto" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxMiasto" ErrorMessage="Musisz podać miast" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxMiasto" ErrorMessage="Podaj prawidłowe miasto" ForeColor="#FF3300" ValidationExpression="^[a-zA-ZąćęłńóśźżĄĘŁŃÓŚŹŻ]{1,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Ulica:</td>
                    <td>
                        <asp:TextBox ID="TextBoxUlica" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxUlica" ErrorMessage="Musisz podać swoją ulicę" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxUlica" ErrorMessage="Podaj prawidłową ulicę" ForeColor="#FF3300" ValidationExpression="^[a-zA-ZąćęłńóśźżĄĘŁŃÓŚŹŻ]{1,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">E-mail:</td>
                    <td>
                        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Podaj swój Email" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Podaj prawidłowy email" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Uwagi</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBoxUwagi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Overline="False" Font-Strikeout="False" ForeColor="#FF3300" HeaderText="Te pola są wymagane!" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="ButtonWyslij" runat="server" Text="Wyślij" Width="213px" OnClick="ButtonWyslij_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LabelWynik" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
