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
    <asp:Label runat="server" Text="es_jugador:"></asp:Label>
    <asp:RadioButton runat="server" ID="radioesjugador" />
    <br />
    <asp:Label runat="server" Text="Posicion:"></asp:Label>
    <asp:TextBox runat="server" id="txtposicion"></asp:TextBox>
    <br />
    <asp:Label runat="server" Text="Password:"></asp:Label>
    <asp:TextBox runat="server" TextMode="Password" id="txtpassword"></asp:TextBox>
    <br />
    <asp:Label runat="server" Text="Numero:"></asp:Label>
    <asp:TextBox runat="server" id="txtnumero"></asp:TextBox>
    <br />
    <asp:Label runat="server" Text="Foto:"></asp:Label>
    <asp:TextBox runat="server" id="txtfoto"></asp:TextBox>
    <br />
    <asp:Button runat="server" Text="Agregar" id="btnAgregar" OnClick="btnAgregar_Click"></asp:Button>
</asp:Content>
