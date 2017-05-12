<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="_3Capas.Principal" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Plantilla de jugadores:
    </h2>
    <br />
    <br />
    <div>
        <asp:GridView ID="gv_principal" runat="server" CellPadding="4" ForeColor="#333333"
            GridLines="None" AutoGenerateColumns="false">
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
            <Columns>
                <asp:BoundField DataField="foto" HtmlEncode="False" DataFormatString="<a target='_blank' href='{0}'><img src='{0}' class='player_photo' /></a>" />
                <asp:BoundField DataField="id" HeaderText="ID" />
                <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="apellido" HeaderText="Apellido" />
                <asp:BoundField DataField="email" HeaderText="Correo" />
                <asp:BoundField DataField="ciudad" HeaderText="Ciudad" />
                <asp:BoundField DataField="es_jugador" HeaderText="Es del equipo" />
                <asp:BoundField DataField="posicion" HeaderText="Posicion" />
                <asp:BoundField DataField="numero" HeaderText="Numero" />
                <asp:BoundField DataField="id" 
                    HtmlEncode="False" 
                    HeaderText="Acciones" 
                    DataFormatString=" <a href='Modificar.aspx?id={0}'><img src='http://magnoliamom.com/images/artisticapart2iconsset/png/32x32/user_edit.png' /></a> <a href='eliminar.aspx?id={0}'><img src='http://icons.veryicon.com/32/System/3D%20Interface/delete.png' /></a>" />

            </Columns>
        </asp:GridView>

    </div>
    <!--div>
        <p>
            <asp:Button ID="boton_buscar" CssClass="boton" runat="server" Text="Buscar" OnClick="boton_buscar_Click" align="center" />
        </p>
    </div-->
    <br />
</asp:Content>
