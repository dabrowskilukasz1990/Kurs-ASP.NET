<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BazyDanych.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSourceKategorie" DataTextField="Kategoria" DataValueField="Kategoria" Height="32px" Width="228px" AutoPostBack="True">
                        <asp:ListItem>Wybierz kategorie</asp:ListItem>
                    </asp:DropDownList>

                    <br />

                    <asp:SqlDataSource ID="SqlDataSourceKategorie" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Kategoria] FROM [Produkty]"></asp:SqlDataSource>

                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" DynamicLayout="false">
                        <ProgressTemplate>
                            <img width="200px" height="200px" src="Gif/loader.gif" />
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceProdukty" Font-Size="Small" ForeColor="#333333" GridLines="None" Width="633px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Tytuł" HeaderText="Tytuł" SortExpression="Tytuł" />
                            <asp:BoundField DataField="Kategoria" HeaderText="Kategoria" SortExpression="Kategoria" />
                            <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor" />
                            <asp:BoundField DataField="Cena" HeaderText="Cena" SortExpression="Cena" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" HorizontalAlign="Center" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceProdukty" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Tytuł], [Kategoria], [Autor], [Cena], [Id] FROM [Produkty] WHERE ([Kategoria] = @Kategoria)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="Kategoria" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceProdukt" ForeColor="#333333" GridLines="None" Height="50px" Width="239px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <EditRowStyle BackColor="#999999" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Tytuł" HeaderText="Tytuł" SortExpression="Tytuł" />
                            <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor" />
                            <asp:BoundField DataField="Kategoria" HeaderText="Kategoria" SortExpression="Kategoria" />
                            <asp:BoundField DataField="Cena" HeaderText="Cena" SortExpression="Cena" />
                            <asp:BoundField DataField="Opis" HeaderText="Opis" SortExpression="Opis" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSourceProdukt" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Produkty] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Produkty] ([Tytuł], [Autor], [Kategoria], [Cena], [Opis]) VALUES (@Tytuł, @Autor, @Kategoria, @Cena, @Opis)" SelectCommand="SELECT * FROM [Produkty] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Produkty] SET [Tytuł] = @Tytuł, [Autor] = @Autor, [Kategoria] = @Kategoria, [Cena] = @Cena, [Opis] = @Opis WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Tytuł" Type="String" />
                            <asp:Parameter Name="Autor" Type="String" />
                            <asp:Parameter Name="Kategoria" Type="String" />
                            <asp:Parameter Name="Cena" Type="Double" />
                            <asp:Parameter Name="Opis" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" DefaultValue="" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Tytuł" Type="String" />
                            <asp:Parameter Name="Autor" Type="String" />
                            <asp:Parameter Name="Kategoria" Type="String" />
                            <asp:Parameter Name="Cena" Type="Double" />
                            <asp:Parameter Name="Opis" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />

        </div>
    </form>
</body>
</html>
