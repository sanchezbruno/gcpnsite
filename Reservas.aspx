<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reservas.aspx.cs" Inherits="Reservas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reservas Cadastradas - Agência</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_RESERVA" DataSourceID="odsReservas" CssClass="table table-striped">
            <Columns>
                <asp:BoundField DataField="ID_RESERVA" HeaderText="ID_RESERVA" InsertVisible="False" ReadOnly="True" SortExpression="ID_RESERVA" Visible="False" />
                <asp:BoundField DataField="CPF" HeaderText="CPF" SortExpression="CPF" />
                <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                <asp:CheckBoxField DataField="PASSAGEM" HeaderText="PASSAGEM?" SortExpression="PASSAGEM" />
                <asp:BoundField DataField="QTD_PASSAGEM" HeaderText="PASSAGEIROS" SortExpression="QTD_PASSAGEM" />
                <asp:BoundField DataField="ORIGEM_PASSAGEM" HeaderText="ORIGEM" SortExpression="ORIGEM_PASSAGEM" />
                <asp:BoundField DataField="DESTINO_PASSAGEM" HeaderText="DESTINO" SortExpression="DESTINO_PASSAGEM" />
                <asp:BoundField DataField="INICIO_PASSAGEM" HeaderText="INÍCIO" SortExpression="INICIO_PASSAGEM" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="FIM_PASSAGEM" HeaderText="FIM" SortExpression="FIM_PASSAGEM" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="VALOR_PASSAGEM" HeaderText="VALOR_PASSAGEM" SortExpression="VALOR_PASSAGEM" Visible="False" />
                <asp:CheckBoxField DataField="HOTEL" HeaderText="HOTEL?" SortExpression="HOTEL" />
                <asp:BoundField DataField="QTD_HOTEL" HeaderText="HÓSPEDES" SortExpression="QTD_HOTEL" />
                <asp:BoundField DataField="CIDADE_HOTEL" HeaderText="CIDADE" SortExpression="CIDADE_HOTEL" />
                <asp:BoundField DataField="INICIO_HOTEL" HeaderText="INÍCIO" SortExpression="INICIO_HOTEL" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="FIM_HOTEL" HeaderText="FIM" SortExpression="FIM_HOTEL" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="VALOR_HOTEL" HeaderText="VALOR_HOTEL" SortExpression="VALOR_HOTEL" Visible="False" />
                <asp:CheckBoxField DataField="CRUZEIRO" HeaderText="CRUZEIRO?" SortExpression="CRUZEIRO" />
                <asp:BoundField DataField="QTD_CRUZEIRO" HeaderText="PASSAGEIROS" SortExpression="QTD_CRUZEIRO" />
                <asp:BoundField DataField="ORIGEM_CRUZEIRO" HeaderText="ORIGEM" SortExpression="ORIGEM_CRUZEIRO" />
                <asp:BoundField DataField="DESTINO_CRUZEIRO" HeaderText="DESTINO" SortExpression="DESTINO_CRUZEIRO" />
                <asp:BoundField DataField="INICIO_CRUZEIRO" HeaderText="INÍCIO" SortExpression="INICIO_CRUZEIRO" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="FIM_CRUZEIRO" HeaderText="FIM" SortExpression="FIM_CRUZEIRO" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="VALOR_CRUZEIRO" HeaderText="VALOR_CRUZEIRO" SortExpression="VALOR_CRUZEIRO" Visible="False" />
                <asp:CheckBoxField DataField="SEGURO" HeaderText="SEGURO?" SortExpression="SEGURO" />
                <asp:BoundField DataField="INICIO_SEGURO" HeaderText="INÍCIO" SortExpression="INICIO_SEGURO" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="FIM_SEGURO" HeaderText="FIM" SortExpression="FIM_SEGURO" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="VALOR_SEGURO" HeaderText="VALOR_SEGURO" SortExpression="VALOR_SEGURO" Visible="False" />
                <asp:BoundField DataField="VALOR_TOTAL" HeaderText="VALOR_TOTAL" SortExpression="VALOR_TOTAL" Visible="False" />
                <asp:BoundField DataField="DATA_RESERVA" HeaderText="DATA_RESERVA" SortExpression="DATA_RESERVA" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="odsReservas" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="getData" TypeName="dsSiteTableAdapters.RESERVATableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_ID_RESERVA" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CPF" Type="String" />
                <asp:Parameter Name="NOME" Type="String" />
                <asp:Parameter Name="PASSAGEM" Type="Boolean" />
                <asp:Parameter Name="QTD_PASSAGEM" Type="Int32" />
                <asp:Parameter Name="ORIGEM_PASSAGEM" Type="String" />
                <asp:Parameter Name="DESTINO_PASSAGEM" Type="String" />
                <asp:Parameter Name="INICIO_PASSAGEM" Type="DateTime" />
                <asp:Parameter Name="FIM_PASSAGEM" Type="DateTime" />
                <asp:Parameter Name="VALOR_PASSAGEM" Type="Decimal" />
                <asp:Parameter Name="HOTEL" Type="Boolean" />
                <asp:Parameter Name="QTD_HOTEL" Type="Int32" />
                <asp:Parameter Name="CIDADE_HOTEL" Type="String" />
                <asp:Parameter Name="INICIO_HOTEL" Type="DateTime" />
                <asp:Parameter Name="FIM_HOTEL" Type="DateTime" />
                <asp:Parameter Name="VALOR_HOTEL" Type="Decimal" />
                <asp:Parameter Name="CRUZEIRO" Type="Boolean" />
                <asp:Parameter Name="QTD_CRUZEIRO" Type="Int32" />
                <asp:Parameter Name="ORIGEM_CRUZEIRO" Type="String" />
                <asp:Parameter Name="DESTINO_CRUZEIRO" Type="String" />
                <asp:Parameter Name="INICIO_CRUZEIRO" Type="DateTime" />
                <asp:Parameter Name="FIM_CRUZEIRO" Type="DateTime" />
                <asp:Parameter Name="VALOR_CRUZEIRO" Type="Decimal" />
                <asp:Parameter Name="SEGURO" Type="Boolean" />
                <asp:Parameter Name="INICIO_SEGURO" Type="DateTime" />
                <asp:Parameter Name="FIM_SEGURO" Type="DateTime" />
                <asp:Parameter Name="VALOR_SEGURO" Type="Decimal" />
                <asp:Parameter Name="VALOR_TOTAL" Type="Decimal" />
                <asp:Parameter Name="DATA_RESERVA" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CPF" Type="String" />
                <asp:Parameter Name="NOME" Type="String" />
                <asp:Parameter Name="PASSAGEM" Type="Boolean" />
                <asp:Parameter Name="QTD_PASSAGEM" Type="Int32" />
                <asp:Parameter Name="ORIGEM_PASSAGEM" Type="String" />
                <asp:Parameter Name="DESTINO_PASSAGEM" Type="String" />
                <asp:Parameter Name="INICIO_PASSAGEM" Type="DateTime" />
                <asp:Parameter Name="FIM_PASSAGEM" Type="DateTime" />
                <asp:Parameter Name="VALOR_PASSAGEM" Type="Decimal" />
                <asp:Parameter Name="HOTEL" Type="Boolean" />
                <asp:Parameter Name="QTD_HOTEL" Type="Int32" />
                <asp:Parameter Name="CIDADE_HOTEL" Type="String" />
                <asp:Parameter Name="INICIO_HOTEL" Type="DateTime" />
                <asp:Parameter Name="FIM_HOTEL" Type="DateTime" />
                <asp:Parameter Name="VALOR_HOTEL" Type="Decimal" />
                <asp:Parameter Name="CRUZEIRO" Type="Boolean" />
                <asp:Parameter Name="QTD_CRUZEIRO" Type="Int32" />
                <asp:Parameter Name="ORIGEM_CRUZEIRO" Type="String" />
                <asp:Parameter Name="DESTINO_CRUZEIRO" Type="String" />
                <asp:Parameter Name="INICIO_CRUZEIRO" Type="DateTime" />
                <asp:Parameter Name="FIM_CRUZEIRO" Type="DateTime" />
                <asp:Parameter Name="VALOR_CRUZEIRO" Type="Decimal" />
                <asp:Parameter Name="SEGURO" Type="Boolean" />
                <asp:Parameter Name="INICIO_SEGURO" Type="DateTime" />
                <asp:Parameter Name="FIM_SEGURO" Type="DateTime" />
                <asp:Parameter Name="VALOR_SEGURO" Type="Decimal" />
                <asp:Parameter Name="VALOR_TOTAL" Type="Decimal" />
                <asp:Parameter Name="DATA_RESERVA" Type="DateTime" />
                <asp:Parameter Name="Original_ID_RESERVA" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
