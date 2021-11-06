<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="Covid19.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
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
                <li class="nav-item active">
                    <a class="nav-link" href="Clientes.aspx">Añadir Clientes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CRUD.aspx">Administrar Personas</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mx-auto border border-dark rounded-sm">
    <br />
        <h3>Añadir Cliente</h3>
    <br />
    <form id="form1" runat="server" class="row g-4">

                <div class="col-sm-7">
                    <asp:TextBox ID="txtNombreC" class="form-control m-1" placeholder="Nombre" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtNombreC" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtCedulaC" class="form-control m-1" placeholder="Cedula" runat="server">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtCedulaC" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
     

                <div class="col-sm-7">
                    <asp:TextBox ID="txtApellidoC" class="form-control m-1" placeholder="Apellido" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtApellidoC" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtTelefonoC" class="form-control m-1" placeholder="Telefono" runat="server"></asp:TextBox>
                </div>


                <div class="col-sm-7">
                    <asp:TextBox ID="txtDireccionC" class="form-control m-1" placeholder="Dirección" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtDireccionC" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                    </div>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtCelularC" class="form-control m-1" placeholder="Celular" runat="server"></asp:TextBox></div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtCelularC" ForeColor="#CC0000">*</asp:RequiredFieldValidator>


                <div class="col-sm-6">
                    <asp:TextBox ID="txtCorreoC" class="form-control m-1" placeholder="Correo" runat="server"></asp:TextBox></div>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtEdadC" class="form-control m-1" placeholder="Edad" runat="server"></asp:TextBox></div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtCelularC" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                <div class="col-sm-3">
                    <asp:DropDownList ID="DropSexoC" class="form-select m-1" runat="server">
                        <asp:ListItem Value="F">Femenino</asp:ListItem>
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="O">Otro</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                

                <div class="col-sm-8"></div>
                <div class="col-sm-4">
                    <asp:Button ID="btnGuardarC" class="form-select m-3" runat="server" Text="Guardar Cliente" OnClick="btnGuardarC_Click" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Cliente] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Cliente] ([cedula], [nombre], [apellido], [direccion], [telefono], [celular], [correo], [edad], [sexo]) VALUES (@cedula, @nombre, @apellido, @direccion, @telefono, @celular, @correo, @edad, @sexo)" SelectCommand="SELECT * FROM [Cliente]" UpdateCommand="UPDATE [Cliente] SET [cedula] = @cedula, [nombre] = @nombre, [apellido] = @apellido, [direccion] = @direccion, [telefono] = @telefono, [celular] = @celular, [correo] = @correo, [edad] = @edad, [sexo] = @sexo WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter Name="cedula" Type="String" ControlID="txtCedulaC" />
                            <asp:ControlParameter Name="nombre" Type="String" ControlID="txtNombreC"/>
                            <asp:ControlParameter Name="apellido" Type="String" ControlID="txtApellidoC"/>
                            <asp:ControlParameter Name="direccion" Type="String" ControlID="txtDireccionC" />
                            <asp:ControlParameter Name="telefono" Type="String" ControlID="txtTelefonoC"/>
                            <asp:ControlParameter Name="celular" Type="String" ControlID="txtCelularC"/>
                            <asp:ControlParameter Name="correo" Type="String" ControlID="txtCorreoC"/>
                            <asp:ControlParameter Name="edad" Type="String" ControlID="txtEdadC"/>
                            <asp:ControlParameter Name="sexo" Type="String" ControlID="dropSexoC"/>
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

    </form>
         </div>
</body>
</html>
