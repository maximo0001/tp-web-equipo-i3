<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="TPWeb_equipo_i3.DetalleArticulo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <div class="row">
        <div class="col">
            <img src="https://cdn.pixabay.com/photo/2023/12/21/08/08/nature-8461405_960_720.jpg" alt="Italian Trulli">
        </div>
        <div class="col">
            <h3>Nombre Articulo</h3>
            <label>$15000</label>
            <asp:TextBox ID="TextBox1" textmode="Number" min="0" max="20" step="1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </div>
</asp:Content>
