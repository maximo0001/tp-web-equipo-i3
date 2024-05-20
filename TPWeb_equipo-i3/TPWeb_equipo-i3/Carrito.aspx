<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPWeb_equipo_i3.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>CARRITO</h2>
    <hr />

    <asp:GridView ID="dgvCarrito" DataKeyNames="IdArticulo" OnSelectedIndexChanged="dgvCarrito_SelectedIndexChanged" cssclass="table" autogeneratecolumns="false" runat="server">
        <Columns>
            <asp:BoundField HeaderText="Id" DataField="IdArticulo" HeaderStyle-CssClass="oculto" itemStyle-CssClass="oculto" />
            <asp:BoundField HeaderText="Codigo" DataField="Codigo"/>
            <asp:BoundField HeaderText="Articulo" DataField="Nombre"/>
            <asp:BoundField HeaderText="Cantidad" DataField="Cantidad"/>            
            <%--<asp:TemplateField HeaderText="Cantidad">
                <ItemTemplate>
                    <asp:TextBox ID="txtCantidad" HeaderText="Cantidad" runat="server" TextMode="Number" Text='<%# Eval("Cantidad") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
                
                me ganó :(   caimos ante el mejor, muchacho--%>
            <asp:CommandField ShowSelectButton="true" SelectText="Eliminar" HeaderText="Eliminar"/>
        </Columns>
    </asp:GridView>
    <div class="d-flex justify-content-end me-4">
            <small class="h3">Total: $</small>
            <asp:Label ID="lblTotal" cssclass="h3" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
