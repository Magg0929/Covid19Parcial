<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="Covid19.CRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light border border-dark">
        <a class="navbar-brand" href="#">SANCOCHINI</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="Pedido.aspx">Realizar pedido</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="WebForm1.aspx">Añadir Vendedores</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Clientes.aspx">Añadir Clientes</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="CRUD.aspx">Administrar Personas</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container mx-auto border border-dark rounded-sm">
        <h4 class="m-2">Clientes</h4>
        <div class="col-sm-6">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" PageSize="5">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="cedula" HeaderText="cedula" SortExpression="cedula" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                    <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                    <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                    <asp:BoundField DataField="celular" HeaderText="celular" SortExpression="celular" />
                    <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                    <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                    <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
                </Columns>
                <HeaderStyle BackColor="#333333" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cliente]" DeleteCommand="DELETE FROM [Cliente] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Cliente] ([cedula], [nombre], [apellido], [direccion], [telefono], [celular], [correo], [edad], [sexo]) VALUES (@cedula, @nombre, @apellido, @direccion, @telefono, @celular, @correo, @edad, @sexo)" UpdateCommand="UPDATE [Cliente] SET [cedula] = @cedula, [nombre] = @nombre, [apellido] = @apellido, [direccion] = @direccion, [telefono] = @telefono, [celular] = @celular, [correo] = @correo, [edad] = @edad, [sexo] = @sexo WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cedula" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="direccion" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                    <asp:Parameter Name="celular" Type="String" />
                    <asp:Parameter Name="correo" Type="String" />
                    <asp:Parameter Name="edad" Type="String" />
                    <asp:Parameter Name="sexo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cedula" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="direccion" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                    <asp:Parameter Name="celular" Type="String" />
                    <asp:Parameter Name="correo" Type="String" />
                    <asp:Parameter Name="edad" Type="String" />
                    <asp:Parameter Name="sexo" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <h4 class="m-2">Vendedores</h4>
        <div class="col-sm-6">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" PageSize="5">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="cedula" HeaderText="cedula" SortExpression="cedula" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                    <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                    <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                    <asp:BoundField DataField="celular" HeaderText="celular" SortExpression="celular" />
                    <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                    <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                    <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
                </Columns>
                <HeaderStyle BackColor="Black" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Vendedor]" DeleteCommand="DELETE FROM [Vendedor] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Vendedor] ([cedula], [nombre], [apellido], [direccion], [telefono], [celular], [correo], [edad], [sexo]) VALUES (@cedula, @nombre, @apellido, @direccion, @telefono, @celular, @correo, @edad, @sexo)" UpdateCommand="UPDATE [Vendedor] SET [cedula] = @cedula, [nombre] = @nombre, [apellido] = @apellido, [direccion] = @direccion, [telefono] = @telefono, [celular] = @celular, [correo] = @correo, [edad] = @edad, [sexo] = @sexo WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cedula" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="direccion" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                    <asp:Parameter Name="celular" Type="String" />
                    <asp:Parameter Name="correo" Type="String" />
                    <asp:Parameter Name="edad" Type="String" />
                    <asp:Parameter Name="sexo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cedula" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="direccion" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                    <asp:Parameter Name="celular" Type="String" />
                    <asp:Parameter Name="correo" Type="String" />
                    <asp:Parameter Name="edad" Type="String" />
                    <asp:Parameter Name="sexo" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
            
    </div>
    

    </form>
    

</body>
</html>
