<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="ShoppingCart.Mantenimientos.Categorias" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 386px;
        }
        .style3
        {
            width: 268px;
        }
        .style4
        {
            width: 268px;
            height: 2px;
        }
        .style5
        {
            width: 386px;
            height: 2px;
        }
        .style6
        {
            width: 223px;
        }
        .style7
        {
            width: 223px;
            height: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    &nbsp;</td>
                <td class="style2" 
                    
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: #FBD8A8; text-align: center;">
                    MANTENIMIENTO CATEGORIAS</td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    &nbsp;</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    &nbsp;</td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    Buscar:
                    &nbsp;
                    </td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txtbuscarcategoria" runat="server" Width="208px" 
                        BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" MaxLength="4"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" 
                        ImageUrl="~/images/buscar.jpg" onclick="buscarcategoria" Width="29px" />
                </td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    align="center" class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    &nbsp;</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    &nbsp;</td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    align="center" class="style6">
                    
                       
                   <center>
                       <asp:Button ID="Button1" runat="server" Text="Nueva Categoria" 
                           Width="114px" BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                           ForeColor="Black" onclick="nuevacategoria" /></center> 
                    
                       
                </td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    Autogenera Código&nbsp;&nbsp;&nbsp;  
                    &nbsp;
                    </td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txtcodigocategoria" runat="server" Width="201px" 
                        BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        Enabled="False" ForeColor="Black"></asp:TextBox>
&nbsp;&nbsp;
                    
                    <asp:Button ID="generarcod" runat="server" BackColor="White" 
                        BorderColor="Black" BorderStyle="Groove" ForeColor="Black" 
                        onclick="btngenerarcod" Text="Generar" Width="78px" Enabled="False" />
                    
                </td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    align="center" class="style6">
                    <asp:Button ID="btnguardarcategoria" runat="server" Text="Guardar" Width="105px" 
                        onclick="btnguardar_click" BackColor="White" BorderColor="Black" 
                        BorderStyle="Groove" ForeColor="Black" />
                    </td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    &nbsp;</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    &nbsp;</td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    align="center" class="style6">
                    <asp:Button ID="btneliminarcategoria" runat="server" Text="Eliminar" 
                        Width="104px" BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" onclick="btneliminarcategoria_Click" />
                    </td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                   Descripción&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txtdescripcioncategoria" runat="server" Height="117px" 
                        Width="347px" BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        Enabled="False" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    align="left" class="style6">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" 
                    
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    </td>
                <td class="style5" 
                    
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    </td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    align="left" class="style7">
                    <br />
                    <asp:Button ID="btnactualizar" runat="server" Text="Actualizar" Width="104px" 
                        BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" onclick="btnactualizar_Click" />
                </td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    Estado:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style2" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: #808080">
                    <asp:RadioButtonList ID="rbestado" runat="server" 
                        Enabled="False" ForeColor="Black">
                        <asp:ListItem Value="A">Activo</asp:ListItem>
                        <asp:ListItem Value="I">Inactivo</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    class="style6">
                    <asp:Button ID="btneditarcategoria" runat="server" Text="Editar" Width="103px" 
                        BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" onclick="editarcategoria" Visible="False" 
                        style="margin-top: 0px" />
                </td>
              
            </tr>
            <tr>
                <td class="style3" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    &nbsp;</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    &nbsp;</td>
                <td style="background-position: center center; color: #808080; font-size: medium; font-weight: normal;" 
                    class="style6">
                    <asp:Label ID="msgcate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    &nbsp;</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    &nbsp;</td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    &nbsp;</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    &nbsp;</td>
                <td style="background-position: center center; font-family:Berlin Sans FB Demi; color: #808080" 
                    class="style6">
                    &nbsp;</td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
