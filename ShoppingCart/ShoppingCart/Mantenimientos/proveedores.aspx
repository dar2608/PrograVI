<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="proveedores.aspx.cs" Inherits="ShoppingCart.Mantenimientos.proveedores" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat= "server">

    <style type="text/css">
        .style1
        {
            width: 667px;
        }
        .style2
        {
        }
        .style3
        {
            width: 217px;
        }
        .style4
        {
            width: 121px;
            height: 185px;
        }
        .style5
        {
            width: 217px;
            height: 185px;
        }
        </style>


<body>

<form id = "form2" runat="server">
    <table class="style1" style="width: 99%">
        <tr>
            <td class="style2" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;</td>
            <td class="style2" 
                
                
                style="font-family: 'Berlin Sans FB Demi'; color: #FBD8A8; font-size: medium; text-align: center;">
                MANTENIMIENTO PROVEEDORES</td>
            <td class="style3" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;</td>
            <td class="style2" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;</td>
            <td class="style3" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'Berlin Sans FB Demi'; color: black; ">
                Buscar: 
                </td>
            <td class="style2" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                <asp:TextBox ID="txtbuscarproveedor" runat="server" Width="199px" BackColor="#FCE6C9" 
                    BorderColor="Gray" MaxLength="4"></asp:TextBox>
                <asp:ImageButton ID="btnbuscarprovee" runat="server" Height="32px" Width="30px" 
                    ImageUrl="~/images/buscar.jpg" onclick="buscarproveedor_Click" />
            </td>
            <td class="style3" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'Berlin Sans FB Demi'; color: black; ">
                &nbsp;</td>
            <td class="style2" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;</td>
            <td class="style3" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'Berlin Sans FB Demi'; color: black; ">
                Codigo Proveedor</td>
            <td class="style2" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                <asp:TextBox ID="txtIDProveedor" runat="server" Width="138px" BackColor="#FCE6C9" 
                    BorderColor="Gray" Enabled="False" Height="23px"></asp:TextBox>
                &nbsp;<asp:Button ID="btngenerarcode" runat="server" BackColor="White" 
                    BorderColor="Black" BorderStyle="Groove" onclick="btnGenerar_Click" 
                    Text="Generar" Width="73px" ForeColor="Black" Enabled="False" />
            </td>
            <td class="style3" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                <center>
                    <asp:Button ID="btnnuevoproveedor" runat="server" BackColor="White" BorderColor="Black" 
                    BorderStyle="Groove" ForeColor="Black" Text="Nuevo Registro" Width="122px" 
                        onclick="nuevoproveedor" CausesValidation="False" /></center>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'Berlin Sans FB Demi'; color: black; ">
                &nbsp;</td>
            <td class="style2" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;</td>
            <td class="style3" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: 'Berlin Sans FB Demi'; color: black; ">
               Descripción:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                <asp:TextBox ID="txtDescripcion" runat="server" Height="105px" Width="501px" 
                    BackColor="#FCE6C9" BorderColor="Gray" Enabled="False" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style5" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <center>
                  <asp:Button ID="btnguardarproveedores" runat="server" Text="Guardar" Width="123px" 
                      BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                      ForeColor="Black" onclick="btnGuardar_Click" /></center>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <center>
                   <asp:Button ID="btneliminarproveedores" runat="server" Height="26px" Text="Eliminar" 
                    Width="125px" BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                       ForeColor="Black" CausesValidation="False" 
                       onclick="btneliminarproveedores_Click" /></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <center>
                   <asp:Button ID="btnactualizar" runat="server" Text="Editar" Width="125px" 
                       BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                       ForeColor="Black" onclick="btnactualizar_Click" 
                       CausesValidation="False" /></center>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'Berlin Sans FB Demi'; color: black; ">
                Email: 
                </td>
            <td class="style2" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                <asp:TextBox ID="txtEmail" runat="server" BackColor="#FCE6C9" 
                    BorderColor="Gray" Enabled="False"></asp:TextBox>
                &nbsp;
            </td>
            <td class="style3" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                   <asp:Button ID="btneditarproveedores" runat="server" Text="Actualizar" Width="125px" 
                       BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                       ForeColor="Black" onclick="btnEditar_Click" Visible="False" 
                       CausesValidation="False" /></td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'Berlin Sans FB Demi'; color: black; ">
                Teléfono:
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style2" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                <asp:TextBox ID="txtTelefono" runat="server" BackColor="#FCE6C9" 
                    BorderColor="Gray" Enabled="False"></asp:TextBox>
            </td>
            <td class="style3" 
                
                style="font-family: 'Berlin Sans FB Demi'; color: #808080; font-size: medium;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'Berlin Sans FB Demi'; color: black; ">
                Sitio Web:
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style2" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                <asp:TextBox ID="txtSitioWeb" runat="server" BackColor="#FCE6C9" 
                    BorderColor="Gray" Enabled="False"></asp:TextBox>
            </td>
            <td class="style3" 
                style="font-family: 'Arial Black'; color: #808080; font-size: x-small;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'Berlin Sans FB Demi'; color: black; ">
                Estado:
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style2" 
                style="font-family: 'Berlin Sans FB Demi'; color: black; ">
                <asp:RadioButtonList ID="rbestado" runat="server" ForeColor="Black" 
                    Enabled="False">
                    <asp:ListItem Value="A">Activo</asp:ListItem>
                    <asp:ListItem Value="I">Inactivo</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style3" 
                style="color: #808080; font-size: medium; font-weight: normal;">
                <asp:Label ID="msjresp" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;</td>
            <td class="style2" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;</td>
            <td class="style3" 
                style="font-family: 'Arial Black'; color: #808080; font-size: medium;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
        
                &nbsp;</td>
        </tr>
        </table>
    </form>
</body>
</head>
    </html>