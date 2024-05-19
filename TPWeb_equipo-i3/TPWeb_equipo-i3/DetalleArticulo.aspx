<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="TPWeb_equipo_i3.DetalleArticulo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <div class="row">
        <div class="col">
            <asp:Repeater ID="RepeaterImagen" runat="server">
                <ItemTemplate>
                    <img class="w-100" src="<%# Eval("UrlImagen") %>" alt="">
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="col">
            <asp:Label ID="lblNombreArt" cssclass="h3" runat="server" Text="Nombre Articulo"></asp:Label>
            <br />
            <asp:Label ID="lblPU" cssclass="h5 ms-2" runat="server" Text="$---"></asp:Label>
            <br /><br /><br />
            <asp:Label ID="lblCodigo" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblDescripcion" runat="server" Text="Label"></asp:Label>
            <br /><br />
            <small>cantidad </small>
            <asp:TextBox ID="txtCantidad" textmode="Number" text="1" min="1" max="20" step="1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnAgregarCarrito" onclick="btnAgregarCarrito_Click" CssClass="btn  btn-warning mt-2 w-50" runat="server" Text="Agregar al Carrito" />
        </div>
    </div>
</asp:Content>
