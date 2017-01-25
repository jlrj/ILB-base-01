<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CreateUser.aspx.vb" Inherits="ILB_base_01.CreateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtNombreUsuario" runat="server" MaxLength="15" ToolTip="Nombre"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblApellidoPaterno" runat="server" Text="Apellido Paterno:"></asp:Label>
    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtApellidoPaterno" runat="server" MaxLength="15" ToolTip="Apellido Paterno"></asp:TextBox>
    <br />
    <br /><asp:Label ID="lblApellidoMaterno" runat="server" Text="Apellido Materno:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtApellidoMaterno" runat="server" MaxLength="15" ToolTip="Apellido Materno"></asp:TextBox>
    <br />
    <br /><asp:Label ID="lblTipoUsuario" runat="server" Text="Tipo Usuario:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtTipoUsuario" runat="server" MaxLength="15" ToolTip="Tipo Usuario"></asp:TextBox>
    <br />
    <br /><asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:TextBox ID="txtEmail" runat="server" MaxLength="15" ToolTip="Email"></asp:TextBox>
    <br />
    <br /><asp:Label ID="lblTelefono" runat="server" Text="Teléfono:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtTelefono" runat="server" MaxLength="15" ToolTip="Teléfono"></asp:TextBox>
    <br />
    <br /><asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtUsuario" runat="server" MaxLength="15" ToolTip="Usuario"></asp:TextBox>
    <br />
    <br /><asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:TextBox ID="txtPassword" runat="server" MaxLength="15" ToolTip="Password"></asp:TextBox>
    <br />
    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" />
</asp:Content>
