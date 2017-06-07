<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="WebApplication1.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style4 {
            width: 202px;
        }
        .auto-style10 {
            height: 23px;
            width: 210px;
        }
        .auto-style11 {
            width: 210px;
        }
        .auto-style14 {
            width: 202px;
            height: 23px;
        }
        #Reset1 {
            width: 100px;
        }
        .auto-style18 {
            width: 202px;
            height: 45px;
            text-align: right;
        }
        .auto-style19 {
            width: 210px;
            height: 45px;
        }
        .auto-style20 {
            height: 45px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style18">Name:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Musisz podać to pole" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">E-Mail</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Musisz podać to pole" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Podaj poprawną formę maila" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Password:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Musisz podać to pole" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Comfirm Password:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Musisz podać to pole" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Hasła nie są takie same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Country:</td>
                <td class="auto-style19">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="206px">
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>Poland</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                        <asp:ListItem>Sweden</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Musisz podać to pole" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" Text="Zarejestruj" Width="100px" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td class="auto-style2"></td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
