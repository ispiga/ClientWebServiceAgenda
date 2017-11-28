<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebAppAgenda.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 418px">
    
        <asp:Label ID="Label1" runat="server" Text="Escriba ID del Contacto: "></asp:Label>
        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nombre: "></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Apellidos: "></asp:Label>
        <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Telefono: "></asp:Label>
        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Correo: "></asp:Label>
        <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" OnClick="btnNuevo_Click" />
        <asp:Button ID="btnEditar" runat="server" Text="Editar" OnClick="btnEditar_Click" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
        <br />
        <br />
        <asp:Label ID="lbMensaje" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar Todos" OnClick="btnMostrarTodos_Click" />
        <br />
        <br />
        <asp:GridView ID="gvDatos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />

        </asp:GridView>
    </div>
    </form>
</body>
</html>
