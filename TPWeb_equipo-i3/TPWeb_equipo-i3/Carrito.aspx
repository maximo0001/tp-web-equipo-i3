<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPWeb_equipo_i3.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>CARRITO</h2>
    <hr />
    <asp:GridView ID="dgvCarrito" cssclass="table" autogeneratecolumns="false" runat="server">
        <Columns>
            <asp:BoundField HeaderText="Codigo" DataField="Codigo"/>
            <asp:BoundField HeaderText="Articulo" DataField="Nombre"/>
            <asp:TemplateField HeaderText="Cantidad">
                <ItemTemplate>
                    <asp:TextBox ID="txtCantidad" HeaderText="Cantidad" runat="server" TextMode="Number" Text='<%# Eval("Cantidad") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Precio" DataField="Precio" cssclass="bg-dark"/>
        </Columns>
    </asp:GridView>
</asp:Content>
