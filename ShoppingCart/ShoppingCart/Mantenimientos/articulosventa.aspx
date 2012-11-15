<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="articulosventa.aspx.cs" Inherits="ShoppingCart.Mantenimientos.articulosventa" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                    ARTICULOS EN VENTA</td>
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
                    Codigo
                    &nbsp;
                    </td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txtcodigo" runat="server" Width="208px" 
                        BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" MaxLength="4"></asp:TextBox>
                    &nbsp;<asp:ImageButton ID="btnconsulta" runat="server" Height="27px" 
                        ImageUrl="~/images/buscar.jpg"  Width="29px" />
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
                   Descripción&nbsp;&nbsp;de la Venta&nbsp;&nbsp; 
                    </td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txtdescventa" runat="server" Height="117px" 
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
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    &nbsp;</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                   &nbsp;</td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    align="left" class="style6">
                    <asp:Button ID="btnnuevaventa" runat="server" Text="Nueva Venta" Width="104px" 
                        BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" onclick="btnnuevaventa_Click" />
                </td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    Costo por Unidad</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txtcosto" runat="server" Width="208px" 
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
                    <asp:Button ID="btnguardar" runat="server" Text="Guardar" Width="104px" 
                        BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" onclick="btnguardar_Click" />
                </td>
            </tr>
            <tr>
                <td class="style3" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: black">
                    Cantidad Existente</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txtcantidad" runat="server" Width="208px" 
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
                    Costo del Envio</td>
                <td class="style2" 
                    style="background-position: center center; font-family: 'Arial Black'; color: #808080">
                    <asp:TextBox ID="txtcostoenvio" runat="server" Width="208px" 
                        BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" MaxLength="4"></asp:TextBox>
                </td>
                <td style="background-position: center center; font-family: 'Arial Black'; color: #808080" 
                    align="left" class="style6">
                    <asp:Button ID="btneditar" runat="server" Text="Editar" Width="104px" 
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
                    Precio Total&nbsp;por Unidad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style2" 
                    
                    style="background-position: center center; font-family: 'Berlin Sans FB Demi'; color: #808080">
                    <asp:TextBox ID="txttotal" runat="server" Width="208px" 
                        BackColor="#FCE6C9" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" MaxLength="4" Enabled="False"></asp:TextBox>
                    &nbsp;<asp:Button ID="btncalcu" runat="server" Text="Calcular" Width="104px" 
                        BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                        ForeColor="Black" onclick="btnactualizar_Click" />
                </td>
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
                <td style="background-position: center center; color: #808080; font-size: medium; font-weight: normal;" 
                    class="style6">
                    <asp:Label ID="msgav" runat="server"></asp:Label>
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
