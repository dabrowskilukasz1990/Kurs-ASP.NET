<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kontrolki.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:Table ID="Table1" runat="server" BackColor="#FF99FF" BorderColor="Black" BorderWidth="3px" GridLines="Both">
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">Komórka1 Wiersz1</asp:TableCell>
                            <asp:TableCell runat="server">Komórka2 Wiersz1</asp:TableCell>
                            <asp:TableCell runat="server">Komórka3 Wiersz1</asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">Komórka1 Wiersz2</asp:TableCell>
                            <asp:TableCell runat="server">Komórka2 Wiersz2</asp:TableCell>
                            <asp:TableCell runat="server">Komórka3 Wiersz2</asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">Komórak1 Wiersz3</asp:TableCell>
                            <asp:TableCell runat="server">Komórka2 Wiersz3</asp:TableCell>
                            <asp:TableCell runat="server">Komórka3 Wiersz3</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <br />
                    <asp:Button ID="ButtonDalej" runat="server" Text="Dalej" OnClick="ButtonDalej_Click" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Image ID="Image1" runat="server" AlternateText="Coś nie bangla" Height="500px" ImageUrl="~/Obrazki/s-l1600.jpg" />
                    <br />
                    <br />
                    <asp:Button ID="ButtonDalej2" runat="server" Text="Dalej" Width="70px" OnClick="ButtonDalej_Click" />
                    <asp:Button ID="ButtonWstecz" runat="server" Text="Wstecz" Width="70px" OnClick="ButtonWstecz_Click" Style="height: 26px" />
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="380px" SelectedDate="2017-05-30" Width="500px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://o2.pl/">tlen.pl</asp:HyperLink>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Web2.aspx">Strona Druga</asp:HyperLink>
                    <br />
                    <br />
                    <asp:Button ID="ButtonWstecz2" runat="server" Text="Wstecz" OnClick="ButtonWstecz_Click" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
