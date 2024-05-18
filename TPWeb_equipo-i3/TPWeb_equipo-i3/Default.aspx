<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWeb_equipo_i3.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Articulos</h1>


    <div class="row row-cols-1 row-cols-md-2 g-4">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="..." class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%# Eval("Descripcion")%></p>
                            <a class="btn btn-outline-primary" href="DetalleArticulo.aspx?id=<%#Eval("Id") %>">Ver Detalle</a>
                            <asp:Button ID="btnAgregarCarrito" cssclass="btn btn-outline-warning" runat="server" Text="Agregar al carrito"/>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
