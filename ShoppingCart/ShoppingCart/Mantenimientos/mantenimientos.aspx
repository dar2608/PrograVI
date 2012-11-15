<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mantenimientos.aspx.cs" Inherits="ShoppingCart.Mantenimientos.mantenimientos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <table class="">
        <tr>
            <td class="">
                <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows" ShowLines="True">
                    <HoverNodeStyle BackColor="#FFCC99"/>
                    <Nodes>
                        <asp:TreeNode NavigateUrl="~/Mantenimientos/proveedores.aspx" 
                            Target="contenedor" Text="Proveedores" Value="Proveedores"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Mantenimientos/Categorias.aspx" 
                            Target="contenedor" Text="Categorias" Value="Categorias"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Mantenimientos/Clientes.aspx" Target="contenedor" 
                            Text="Clientes" Value="Clientes"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Mantenimientos/articulosventa.aspx" 
                            Target="contenedor" Text="Articulos para venta" Value="Articulos para venta">
                        </asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Mantenimientos/Articulos.aspx" Target="contenedor" 
                            Text="Articulos" Value="Articulos"></asp:TreeNode>
                    </Nodes>
                    <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" 
                        HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                    <ParentNodeStyle ForeColor="black" BackColor="#FF9966"/>
                    <SelectedNodeStyle BackColor="#FF9966" ForeColor="Black" />
                </asp:TreeView>
                     </td>
            <td>
                 &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                 <iframe name="contenedor" id="ContentManten" height="500" width="750" frameborder="0"></iframe></td>
        </tr>
    </table>

</asp:Content>
