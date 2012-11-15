<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="ShoppingCart.Mantenimientos.Clientes" %>

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
            font-weight: bold;
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
                    MANTENIMIENTO CLIENTES&nbsp;</td>
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
                    Cedula
                    &nbsp;
                    </td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txtbuscar" runat="server" Width="208px" 
                        BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" MaxLength="4"></asp:TextBox>
                    &nbsp;<asp:ImageButton ID="btnconsulta" runat="server" Height="27px" 
                        ImageUrl="~/images/buscar.jpg"  Width="29px" 
                        onclick="ImageButton1_Click" />
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
                       </center> 
                    
                       
                </td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    Nombre</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txtnombre" runat="server" Width="208px" 
                        BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" MaxLength="4"></asp:TextBox>
                    </td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    align="center" class="style6">
                    
                       
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    Primer Apellido</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txtprimerapell" runat="server" Width="208px" 
                        BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" MaxLength="4"></asp:TextBox>
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
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    &nbsp;</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                   &nbsp;</td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    align="left" class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    Segundo Nombre</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txtsegundoapell" runat="server" Width="208px" 
                        BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" MaxLength="4"></asp:TextBox>
                </td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    align="left" class="style6">
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
                    align="left" class="style6">
                    <asp:Button ID="btnguardarclientes" runat="server" Text="Guardar" Width="104px" 
                        BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" onclick="guardarcliente" />
                </td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    Telefono</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txttelefono" runat="server" Width="208px" 
                        BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" MaxLength="4"></asp:TextBox>
                </td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    align="left" class="style6">
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
                    align="left" class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    Correo</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txtcorreo" runat="server" Width="208px" 
                        BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" MaxLength="4"></asp:TextBox>
                </td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    align="left" class="style6">
                    <asp:Button ID="btneditarclientes" runat="server" Text="Editar" Width="104px" 
                        BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" onclick="btneditar_Click" />
                </td>
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
                        ForeColor="Black" onclick="btnactualizar_Click" Visible="False" />
                </td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    Fecha&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    </td>
                <td class="style2" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: #808080">
                    <asp:TextBox ID="txtfecha" runat="server" Width="208px" 
                        BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" MaxLength="4" Enabled="False"></asp:TextBox>
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
                <td style="background-position: center center; color: #808080; font-size: medium; font-weight: 700;" 
                    class="style6">
                    <asp:Button ID="btneliminarclientes" runat="server" Text="Eliminar" Width="104px" 
                        BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" onclick="btneliminar_Click" />
                </td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    </td>
                <td class="style2" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: #808080">
                    <asp:TextBox ID="txtpass" runat="server" Width="208px" 
                        BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" MaxLength="4" Enabled="False"></asp:TextBox>
                    &nbsp;</td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    class="style6">
                    &nbsp;</td>
              
            </tr>
            <tr>
                <td class="style2" 
                    
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    &nbsp;</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    &nbsp;</td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    class="style2">
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
                    <asp:Label ID="lbmsg" runat="server"></asp:Label>
                </td>
            </tr>
            </table>    
      
    
    </div>
    </form>
</body>
</html>
