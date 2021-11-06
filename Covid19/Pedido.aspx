<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedido.aspx.cs" Inherits="Covid19.Pedido" %>

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
                <li class="nav-item active">
                    <a class="nav-link" href="Pedido.aspx">Realizar pedido</a>
                </li>
                <li class="nav-item ">
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
        <h3>Realizar Pedido</h3>
    <br />
    <form id="form1" runat="server" class="row g-4">
                <h5>Seleccionar Cliente</h5>
                <div class="col-sm-4">
                    <asp:DropDownList ID="DropDownList1" class="form-select m-1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="Id">

                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cliente]"></asp:SqlDataSource>
                    </div>
                
                <h5>Seleccionar Vendedor</h5>
                <div class="col-sm-4">
                    <asp:DropDownList ID="DropDownList2" class="form-select m-1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="Id">

                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Vendedor]"></asp:SqlDataSource>
                    </div>
                
                <h5>Seleccionar Producto</h5>
                <div class="col-sm-4">
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="nombreProducto" DataValueField="productoId"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Productos]" OnSelecting="SqlDataSource3_Selecting"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Pedido] WHERE [nroPedido] = @nroPedido" InsertCommand="INSERT INTO [Pedido] ([clienteId], [VendedorId], [totalVenta] ) VALUES (@clienteId, @VendedorId, @totalVenta); Select SCOPE_IDENTITY();" SelectCommand="SELECT * FROM [Pedido]" UpdateCommand="UPDATE [Pedido] SET [detallePedido] = @detallePedido, [clienteId] = @clienteId, [VendedorId] = @VendedorId WHERE [nroPedido] = @nroPedido" OnInserted="SqlDataSource5_Inserted">
                            <DeleteParameters>
                                <asp:Parameter Name="nroPedido" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter Name="clienteId" Type="Int32" ControlID="DropDownList1" PropertyName="SelectedValue"/>
                                <asp:ControlParameter Name="VendedorId" Type="Int32" ControlID="DropDownList2" PropertyName="SelectedValue"/>
                                <asp:SessionParameter Name="totalVenta" Type="String" DefaultValue="15000"  />
                                <asp:Parameter Direction="Output" Name="Id" Type="Int64" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="totalVenta" Type="String" />
                                <asp:Parameter Name="clienteId" Type="Int32" />
                                <asp:Parameter Name="VendedorId" Type="Int32" />
                                <asp:Parameter Name="nroPedido" Type="Int32" />
                            </UpdateParameters>

                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [DetallePedido] WHERE [DetalleId] = @DetalleId" InsertCommand="INSERT INTO [DetallePedido] ( [nroPedido], [productoId], [Inventario]) VALUES (@nroPedido, @productoId, @Inventario)" SelectCommand="SELECT * FROM [DetallePedido]" UpdateCommand="UPDATE [DetallePedido] SET [nroPedido] = @nroPedido, [productoId] = @productoId, [Inventario] = @Inventario WHERE [DetalleId] = @DetalleId">
                            <DeleteParameters>
                                <asp:Parameter Name="DetalleId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:SessionParameter Name="nroPedido" Type="Int32" SessionField="IdPedido" />
                                <asp:ControlParameter Name="productoId" Type="Int32" ControlID="DropDownList3" PropertyName="SelectedValue" />
                                <asp:ControlParameter Name="Inventario" Type="Int32" ControlID="txtCantidad" PropertyName="SelectedValue"/>
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nroPedido" Type="Int32" />
                                <asp:Parameter Name="productoId" Type="Int32" />
                                <asp:Parameter Name="Inventario" Type="Int32" />
                                <asp:Parameter Name="DetalleId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                    </div>
                

                <div class="col-sm-6">
                    <asp:TextBox ID="txtCantidad" TextMode="Number" placeholder="Cantidad" runat="server"></asp:TextBox>
                    </div>

                <div class="col-sm-6">
                    <asp:Button ID="btnAgregarProd" runat="server" Text="Button" OnClick="Button1_Click" />
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Productos]">
                    </asp:SqlDataSource>
                    <asp:DataList ID="DataList1" runat="server">
                    </asp:DataList>
                    </div>

                <div class="col-sm-12">
                    
                    </div>

    </form>

        </div>
            
</body>
</html>
