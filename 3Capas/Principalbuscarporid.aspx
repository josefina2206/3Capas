﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Principalbuscarporid.aspx.cs" Inherits="_3Capas.Principalbuscarporid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Ingrese nombre: "></asp:Label>
    <asp:TextBox runat="server" ID="txtId" Width="128px"></asp:TextBox>
    <br />
    <h2>
        Ejemplo aplicacion de 3 capas:
    </h2>
    <br />
    <br />
    <div>
    <asp:GridView ID="gv_principal" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
  
    </div>
    <div>
    <p>
        <asp:Button ID="boton_buscar" runat="server" Text="Buscar" onclick="boton_buscar_Click" align="center"/>
    </p>
    </div>
    <br />

</asp:Content>

