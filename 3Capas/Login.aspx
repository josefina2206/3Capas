<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_3Capas.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>iniciar sesion</h1>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
    <asp:TextBox ID="txtusuario" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Contraseña:"></asp:Label>
    <asp:TextBox ID="txtcontraseña" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar" />
    <br />
</asp:Content>
