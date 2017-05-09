<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Insertar.aspx.cs" Inherits="_3Capas.Insertar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label runat="server" Text="Nombre:"></asp:Label>
    <asp:TextBox runat="server" id="txtNombre"></asp:TextBox>
    <br />
    <asp:Label runat="server" Text="Apellido:"></asp:Label>
    <asp:TextBox runat="server" id="txtApellido"></asp:TextBox>
    <br />
    <asp:Label runat="server" Text="Email:"></asp:Label>
    <asp:TextBox runat="server" id="txtEmail"></asp:TextBox>
    <br />
    <asp:Label runat="server" Text="Ciudad:"></asp:Label>
    <asp:TextBox runat="server" id="txtCiudad"></asp:TextBox>
    <br />
    <asp:Button runat="server" Text="Agregar" id="btnAgregar" OnClick="btnAgregar_Click"></asp:Button>
</asp:Content>
