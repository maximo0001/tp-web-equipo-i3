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
                        <%--lo solucionare pasada la entrega--%>
                        <img src="https://img.freepik.com/free-vector/illustration-gallery-icon_53876-27002.jpg" class="card-img-top w-50" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%# Eval("Descripcion")%></p>
                            <a class="btn btn-outline-primary w-100" href="DetalleArticulo.aspx?id=<%#Eval("Id") %>">Ver Detalle</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
