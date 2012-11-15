using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ShoppingCart.Mantenimientos
{
    public partial class Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        clsConexion conexion = new clsConexion();
        DataSet ds = new DataSet();
        clsClientes cliente = new clsClientes();

   
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            cliente.Cedula = Convert.ToInt32(txtbuscar.Text);
            ds = cliente.consultarclientes();

            try
            {
                txtnombre.Text = ds.Tables[0].Rows[0]["Nombre"].ToString();
                txtprimerapell.Text = ds.Tables[0].Rows[0]["Apellido_Uno"].ToString();
                txtsegundoapell.Text = ds.Tables[0].Rows[0]["Apellido_Dos"].ToString();
                txttelefono.Text = ds.Tables[0].Rows[0]["Telefono_Cliente"].ToString();
                txtcorreo.Text = ds.Tables[0].Rows[0]["Correo_Cliente"].ToString();
                txtfecha.Text = ds.Tables[0].Rows[0]["Fecha_Nacimiento"].ToString();
                this.txtpass.Text = ds.Tables[0].Rows[0]["Password"].ToString();
                btneditarclientes.Visible = true;
                btneliminarclientes.Visible = true;
            }

            catch
            {
                lbmsg.Text = "Se produjo un error en la consulta";
            }



        }

        protected void btneditar_Click(object sender, EventArgs e)
        {
           
                txtnombre.Enabled = true;
                txtprimerapell.Enabled = true;
                txtsegundoapell.Enabled = true;
                txttelefono.Enabled = true;
                txtcorreo.Enabled = true;
                txtfecha.Enabled = true;
                txtpass.Enabled = true;
                btnguardarclientes.Enabled = true;
                    btnactualizar.Visible = true;

                        
        }


        protected void guardarcliente(object sender, EventArgs e)
        {
            try
            {
                cliente.Nombre = txtnombre.Text;
                cliente.Apellido1 = txtprimerapell.Text;
                cliente.Apellido2 = txtsegundoapell.Text;
                cliente.Telefono = txttelefono.Text;
                cliente.Correo = txtcorreo.Text;
                cliente.Fechanacimiento = Convert.ToDateTime(txtfecha.Text);
                cliente.Pass = txtpass.Text;

                
                lbmsg.Text = "Se agrego correctamente";
                             
            }
            catch (Exception ex)
            {
                lbmsg.Text = "Se produjo un error en el ingreso de datos";
            }
        }

        protected void btneliminar_Click(object sender, EventArgs e)
        {
            try
            {
                cliente.Cedula = Convert.ToInt32(txtbuscar.Text);
                cliente.eliminarcliente();
                lbmsg.Text = "Datos eliminados correctamente";
            }
            catch (Exception ex)
            {
                lbmsg.Text = "Se produjo un error al eliminar datos";
            }
        }

        protected void btnactualizar_Click(object sender, EventArgs e)
        {
            try
            {

            cliente.editarcliente();
            lbmsg.Text = "Datos Insertados Correctamente";
            }

            catch (Exception ex)
            {
                lbmsg.Text = "Se produjo un error al editar los cambios";
            }
        }

    
    }
}