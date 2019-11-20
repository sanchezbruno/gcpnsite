<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Clientes.aspx.cs" Inherits="Reservas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clientes Cadastrados - Agência</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="odsClientes" CssClass="table table-striped">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
                <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                <asp:BoundField DataField="CPF" HeaderText="CPF" SortExpression="CPF" />
                <asp:BoundField DataField="CEP" HeaderText="CEP" SortExpression="CEP" />
                <asp:BoundField DataField="ENDERECO" HeaderText="ENDERECO" SortExpression="ENDERECO" />
                <asp:BoundField DataField="NUMERO" HeaderText="NUMERO" SortExpression="NUMERO" />
                <asp:BoundField DataField="BAIRRO" HeaderText="BAIRRO" SortExpression="BAIRRO" />
                <asp:BoundField DataField="CIDADE" HeaderText="CIDADE" SortExpression="CIDADE" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="odsClientes" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="getData" TypeName="dsSiteTableAdapters.CLIENTETableAdapter">
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
