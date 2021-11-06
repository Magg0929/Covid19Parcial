<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Covid19.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 33.333333%;
            flex: 0 0 33.333333%;
            max-width: 33.333333%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
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
                <li class="nav-item active">
                    <a class="nav-link" href="WebForm1.aspx">Añadir Vendedores</a>
                </li>
                <li class="nav-item">
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
        <h3>Añadir Vendedor</h3>
    <br />
    <form id="form1" runat="server" class="row g-4">

                <div class="col-sm-7">
                    <asp:TextBox ID="txtNombreV" class="form-control m-1" placeholder="Nombre" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="txtNombreV">*</asp:RequiredFieldValidator></div>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtCedulaV" class="form-control m-1" placeholder="Cedula" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="txtCedulaV"></asp:RequiredFieldValidator>
                </div>
     

                <div class="col-sm-7">
                    <asp:TextBox ID="txtApellidoV" class="form-control m-1" placeholder="Apellido" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="txtApellidoV"></asp:RequiredFieldValidator>
                </div>
                <div class="auto-style1">
                    <asp:TextBox ID="txtTelefonoV" class="form-control m-1" placeholder="Telefono" runat="server"></asp:TextBox></div>


                <div class="col-sm-7">
                    <asp:TextBox ID="txtDireccionV" class="form-control m-1" placeholder="Dirección" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="txtDireccionV"></asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtCelularV" class="form-control m-1" placeholder="Celular" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="txtCelularV"></asp:RequiredFieldValidator>
                </div>


                <div class="col-sm-6">
                    <asp:TextBox ID="txtCorreoV" class="form-control m-1" placeholder="Correo" runat="server"></asp:TextBox></div>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtEdadV" class="form-control m-1" placeholder="Edad" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtEdadV" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-3">
                    <asp:DropDownList ID="DropSexoV" class="form-select m-1" runat="server">
                        <asp:ListItem Value="F">Femenino</asp:ListItem>
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="O">Otro</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                

                <div class="col-sm-8"></div>
                <div class="col-sm-4">
                    <asp:Button ID="btnGuardarV" class="form-select m-3" runat="server" Text="Guardar Vendedor" OnClick="btnGuardarV_Click" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Vendedor] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Vendedor] ([cedula], [nombre], [apellido], [direccion], [telefono], [celular], [correo], [edad], [sexo]) VALUES (@cedula, @nombre, @apellido, @direccion, @telefono, @celular, @correo, @edad, @sexo)" SelectCommand="SELECT * FROM [Vendedor]" UpdateCommand="UPDATE [Vendedor] SET [cedula] = @cedula, [nombre] = @nombre, [apellido] = @apellido, [direccion] = @direccion, [telefono] = @telefono, [celular] = @celular, [correo] = @correo, [edad] = @edad, [sexo] = @sexo WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter Name="cedula" Type="String" ControlID="txtCedulaV" />
                            <asp:ControlParameter Name="nombre" Type="String" ControlID="txtNombreV"/>
                            <asp:ControlParameter Name="apellido" Type="String" ControlID="txtApellidoV"/>
                            <asp:ControlParameter Name="direccion" Type="String" ControlID="txtDireccionV" />
                            <asp:ControlParameter Name="telefono" Type="String" ControlID="txtTelefonoV"/>
                            <asp:ControlParameter Name="celular" Type="String" ControlID="txtCelularV"/>
                            <asp:ControlParameter Name="correo" Type="String" ControlID="txtCorreoV"/>
                            <asp:ControlParameter Name="edad" Type="String" ControlID="txtEdadV"/>
                            <asp:ControlParameter Name="sexo" Type="String" ControlID="dropSexoV"/>
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
