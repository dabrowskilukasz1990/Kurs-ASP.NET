<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Entity.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSourceKategorie" DataTextField="Kategoria" DataValueField="Kategoria" AppendDataBoundItems="True" AutoPostBack="True">
            <asp:ListItem>Wybierz kategorie</asp:ListItem>
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSourceKategorie" runat="server" ConnectionString="name=NaszaBazaEntities" DefaultContainerName="NaszaBazaEntities" EnableFlattening="False" EntitySetName="Produkty" Select="DISTINCT it.[Kategoria]">
        </asp:EntityDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" CellPadding="4" DataSourceID="EntityDataSourceProdukty" ForeColor="#333333" GridLines="None" Width="445px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:EntityDataSource 
            ID="EntityDataSourceProdukty" 
            runat="server" 
            ConnectionString="name=NaszaBazaEntities" 
            DefaultContainerName="NaszaBazaEntities" 
            EnableDelete="True" EnableFlattening="False" 
            EnableInsert="True" EnableUpdate="True" 
            EntitySetName="Produkty">
<%--            Where="it.[Kategoria] == @Kategoria">
        <WhereParameters> //Dodanie aby wyświetlała się jedna kategoria do kilku produktów, a nie kilka kategori tych samych do jednego produktu
            <asp:ControlParameter Name="Kategoria" ControlID="DropDownList1" Type="String" DefaultValue="Null" />
        </WhereParameters>--%>
        </asp:EntityDataSource>
        <br />
        <br />
       <%-- //Wyświetlanie jednej kategori produktu oraz sortowanie według ceny malejąco.--%>
        <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="EntityDataSourceProdukty">
            <asp:PropertyExpression>
                <asp:ControlParameter ControlID="DropDownList1" Name="Kategoria" />
            </asp:PropertyExpression>
            <asp:OrderByExpression DataField="Cena" Direction="Descending" />
        </asp:QueryExtender>
        <br />
    
    </div>
    </form>
</body>
</html>
