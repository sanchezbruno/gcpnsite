<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Compras.aspx.cs" Inherits="Compras" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Compras Cadastradas - Agência</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_COMPRA" DataSourceID="odsCompras" CssClass="table table-striped">
            <Columns>
                <asp:BoundField DataField="ID_COMPRA" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID_COMPRA" />
                <asp:BoundField DataField="CPF" HeaderText="CPF" SortExpression="CPF" />
                <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                <asp:BoundField DataField="EMAIL" HeaderText="E-MAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="CEP" HeaderText="CEP" SortExpression="CEP" />
                <asp:BoundField DataField="ENDERECO" HeaderText="ENDEREÇO" SortExpression="ENDERECO" />
                <asp:BoundField DataField="NUMERO" HeaderText="NÚMERO" SortExpression="NUMERO" />
                <asp:BoundField DataField="BAIRRO" HeaderText="BAIRRO" SortExpression="BAIRRO" />
                <asp:BoundField DataField="CIDADE" HeaderText="CIDADE" SortExpression="CIDADE" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                <asp:CheckBoxField DataField="PASSAGEM" HeaderText="PASSAGEM?" SortExpression="PASSAGEM" />
                <asp:BoundField DataField="QTD_PASSAGEM" HeaderText="QTD. PASSAGEIROS" SortExpression="QTD_PASSAGEM" />
                <asp:BoundField DataField="ORIGEM_PASSAGEM" HeaderText="ORIGEM" SortExpression="ORIGEM_PASSAGEM" />
                <asp:BoundField DataField="DESTINO_PASSAGEM" HeaderText="DESTINO" SortExpression="DESTINO_PASSAGEM" />
                <asp:BoundField DataField="INICIO_PASSAGEM" HeaderText="DT. IDA" SortExpression="INICIO_PASSAGEM" />
                <asp:BoundField DataField="FIM_PASSAGEM" HeaderText="DT. VOLTA" SortExpression="FIM_PASSAGEM" />
                <asp:BoundField DataField="VALOR_PASSAGEM" HeaderText="VALOR PASSAGEM" SortExpression="VALOR_PASSAGEM" />
                <asp:CheckBoxField DataField="HOTEL" HeaderText="HOTEL?" SortExpression="HOTEL" />
                <asp:BoundField DataField="QTD_HOTEL" HeaderText="QTD HÓSPEDES" SortExpression="QTD_HOTEL" />
                <asp:BoundField DataField="CIDADE_HOTEL" HeaderText="CIDADE" SortExpression="CIDADE_HOTEL" />
                <asp:BoundField DataField="INICIO_HOTEL" HeaderText="DATA ENTRADA" SortExpression="INICIO_HOTEL" />
                <asp:BoundField DataField="FIM_HOTEL" HeaderText="DATA SAÍDA" SortExpression="FIM_HOTEL" />
                <asp:BoundField DataField="VALOR_HOTEL" HeaderText="VALOR HOTEL" SortExpression="VALOR_HOTEL" />
                <asp:CheckBoxField DataField="CRUZEIRO" HeaderText="CRUZEIRO?" SortExpression="CRUZEIRO" />
                <asp:BoundField DataField="QTD_CRUZEIRO" HeaderText="QTD PASSAGEIROS" SortExpression="QTD_CRUZEIRO" />
                <asp:BoundField DataField="ORIGEM_CRUZEIRO" HeaderText="ORIGEM" SortExpression="ORIGEM_CRUZEIRO" />
                <asp:BoundField DataField="DESTINO_CRUZEIRO" HeaderText="DESTINO" SortExpression="DESTINO_CRUZEIRO" />
                <asp:BoundField DataField="INICIO_CRUZEIRO" HeaderText="DT. INÍCIO" SortExpression="INICIO_CRUZEIRO" />
                <asp:BoundField DataField="FIM_CRUZEIRO" HeaderText="DT. FIM" SortExpression="FIM_CRUZEIRO" />
                <asp:BoundField DataField="VALOR_CRUZEIRO" HeaderText="VALOR CRUZEIRO" SortExpression="VALOR_CRUZEIRO" />
                <asp:CheckBoxField DataField="SEGURO" HeaderText="SEGURO?" SortExpression="SEGURO" />
                <asp:BoundField DataField="INICIO_SEGURO" HeaderText="DT. INÍCIO" SortExpression="INICIO_SEGURO" />
                <asp:BoundField DataField="FIM_SEGURO" HeaderText="DT. FIM" SortExpression="FIM_SEGURO" />
                <asp:BoundField DataField="VALOR_SEGURO" HeaderText="VALOR SEGURO" SortExpression="VALOR_SEGURO" />
                <asp:BoundField DataField="VALOR_TOTAL" HeaderText="VALOR TOTAL" SortExpression="VALOR_TOTAL" />
                <asp:CheckBoxField DataField="PAGO" HeaderText="PAGO?" SortExpression="PAGO" />
                <asp:BoundField DataField="PAGO_DATA" HeaderText="DATA PAGAMENTO" SortExpression="PAGO_DATA" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="odsCompras" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="getData" TypeName="dsSiteTableAdapters.COMPRATableAdapter">
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
