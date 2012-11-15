<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Articulos.aspx.cs" Inherits="ShoppingCart.Mantenimientos.Articulos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat= "server">

    <style type="text/css">
        .style1
        {
            width: 856px;
            height: 181px;
        }
        .style4
        {
            width: 569px;
        }
        .style5
        {
            width: 569px;
            height: 23px;
        }
        .style6
        {
            height: 23px;
        }
        .style7
        {
            width: 569px;
            height: 28px;
        }
        .style8
        {
            height: 28px;
        }
    </style>


<body>
<form id = "form1" runat = "server">

    <table class="style1">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style4" 
                
                style="color: #FBD8A8; font-family: 'Berlin Sans FB Demi'; text-align: center;">
                MANTENIMIENTO ARTICULOS </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: 'Berlin Sans FB Demi'; ">
                Buscar:&nbsp;&nbsp;&nbsp; 
                </td>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                <asp:TextBox ID="txtbuscararticulos" runat="server" Width="178px" 
                    BackColor="#FCE6C9" BorderColor="Black" ForeColor="Black"></asp:TextBox>
                <asp:ImageButton ID="btnbuscararticulo" runat="server" Height="26px" 
                    ImageUrl="~/images/buscar.jpg" Width="33px" 
                    onclick="btnbuscararticulo_Click" />
            </td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold; text-align: center;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: 'Berlin Sans FB Demi'; ">
                &nbsp;</td>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                &nbsp;</td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold; text-align: center;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: 'Berlin Sans FB Demi'; ">
                Categoría Articulo&nbsp;
                <br />
            </td>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                <asp:DropDownList ID="combocategorias" runat="server" AutoPostBack="True" 
                    Height="26px" Width="124px" BackColor="#FCE6C9" Enabled="False"> </asp:DropDownList>
            </td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold; text-align: center;">
                <asp:Button ID="narticulo" runat="server" BackColor="White" BorderColor="Black" 
                    BorderStyle="Groove" ForeColor="Black" onclick="nuevoarticulo" Text="Nuevo" 
                    Width="136px" />
            </td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: 'Berlin Sans FB Demi'; ">
                &nbsp;</td>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                &nbsp;</td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold; text-align: center;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: 'Berlin Sans FB Demi'; ">
                Autogenerar Código:
            </td>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                <asp:TextBox ID="txtcodigoarticulos" runat="server" BackColor="#FCE6C9" 
                    BorderColor="Gray" Enabled="False" Width="153px" ForeColor="Black"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button ID="btngenerar" runat="server" 
                    Text="Generar" BackColor="White" BorderColor="Black" 
                    BorderStyle="Groove" ForeColor="Black" onclick="btngenerar_Click" />
            </td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold; text-align: center;">
                <asp:Button ID="btnguardararticulo" runat="server" Text="Guardar" Width="141px" 
                    BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                    ForeColor="Black" onclick="btnguardararticulo_Click" />
                </td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: 'Berlin Sans FB Demi'; ">
                &nbsp;</td>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                &nbsp;</td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold; text-align: center;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: 'Berlin Sans FB Demi'; ">
                Código de Barras:&nbsp;
                &nbsp;</td>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                <asp:TextBox ID="txtcodbarras" runat="server" Width="158px" BackColor="#FCE6C9" 
                    BorderColor="Gray" Enabled="False" ForeColor="Black"></asp:TextBox>
                &nbsp;</td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold; text-align: center;">
                <asp:Button ID="btneditararticulo" runat="server" Text="Editar" Width="140px" 
                    BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                    ForeColor="Black" style="margin-left: 0px" 
                    onclick="btneditararticulo_Click" />
            </td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: 'Berlin Sans FB Demi'; ">
                &nbsp;</td>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                &nbsp;</td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold; text-align: center;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: 'Berlin Sans FB Demi'; ">
                Imagen:&nbsp;
                </td>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                <asp:FileUpload ID="fileimagearti" runat="server" BackColor="#FCE6C9" 
                    BorderColor="Gray" BorderStyle="Groove" ForeColor="Black" Width="275px" 
                    Enabled="False" />
                </td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold; text-align: center;">
                <asp:Button ID="btneliminararticulo" runat="server" Text="Eliminar" 
                    Width="139px" BackColor="White" BorderColor="Black" BorderStyle="Groove" 
                    ForeColor="Black" style="margin-left: 0px" 
                    onclick="btneliminararticulo_Click" />
                </td>
        </tr>
        <tr>
            <td class="style7" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                </td>
            <td class="style7" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                </td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold; text-align: center;" 
                class="style8">
                </td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                &nbsp;</td>
            <td class="style4" 
                style="font-family: 'Berlin Sans FB Demi'; color: #FBD8A8; font-weight: normal; font-size: medium;" 
                align="center">
                IMAGEN<br />
&nbsp;
<asp:GridView ID="gwArticulos" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Width="380px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="" HeaderText="Nombre Articulo" />
                            <asp:ImageField>

                            </asp:ImageField>
                        </Columns>
                        <EditRowStyle BackColor="#F7D35F" />
                        <FooterStyle BackColor="#F0CE9E" Font-Bold="True" ForeColor="#B6894A" />
                        <HeaderStyle BackColor="#F0CE9E" Font-Bold="True" ForeColor="#B6894A" />
                        <PagerStyle BackColor="#284775" ForeColor="#B6894A" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F8EAD7" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#F8EAD7" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8EAD7" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
            </td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                &nbsp;</td>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                &nbsp;</td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" 
                
                style="font-family: 'Berlin Sans FB Demi'; color: black; font-weight: bold">
                Descripción:
                </td>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                <asp:TextBox ID="txtdescripcion" runat="server" Height="109px" Width="449px" 
                    BackColor="#FCE6C9" BorderColor="Gray" TextMode="MultiLine" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                &nbsp;</td>
            <td class="style4" 
                style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                &nbsp;</td>
            <td style="font-family: 'Arial Black'; color: #808080; font-weight: bold">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" 
                
                style="font-family: 'Berlin Sans FB Demi'; color: black; font-weight: bold">
                Estado:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </td>
            <td class="style4" 
                
                style="font-family: 'Berlin Sans FB Demi'; color: #808080; font-weight: bold">
                <asp:RadioButtonList ID="rbestadoarticulo" runat="server" BorderColor="Gray" 
                    ForeColor="Black" Enabled="False">
                    <asp:ListItem Value="A">Activo</asp:ListItem>
                    <asp:ListItem Value="I">Inactivo</asp:ListItem>
                </asp:RadioButtonList>
                <br />
            </td>
            <td style="color: #808080; font-weight: normal; font-size: medium;">
                <asp:Label ID="msgarti" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
      </form>
</body>
</head>
</html>