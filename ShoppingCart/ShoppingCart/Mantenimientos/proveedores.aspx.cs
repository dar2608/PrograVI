using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;

namespace ShoppingCart.Mantenimientos
{
    public partial class proveedores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        clsProveedores objclsProveedor = new clsProveedores();
        clsModProveedor objeModProveedor = new clsModProveedor();

        Hashtable objparametros = new Hashtable();

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            msjresp.Text = "";

            string respuestas = "";
            obtenerDatos();
            respuestas = objclsProveedor.insertarProveedor(objparametros, "I");
            msjresp.Text = respuestas;

            txtDescripcion.Enabled = false;
            txtEmail.Enabled = false;
            txtTelefono.Enabled = false;
            txtSitioWeb.Enabled = false;
            rbestado.Enabled = false;
            btngenerarcode.Enabled = false;
        }

        public void obtenerDatos()
        {
            objparametros.Add("Id_Provee", txtIDProveedor.Text);
            objparametros.Add("Descripcion", txtDescripcion.Text);
            objparametros.Add("Correo", txtEmail.Text);
            objparametros.Add("Telefono", this.txtTelefono.Text);
            objparametros.Add("Sitio_Web", txtSitioWeb.Text);




            if (rbestado.SelectedValue == "A")
            {
                objparametros.Add("Estado", 'A');
            }
            else
            {
                objparametros.Add("Estado", 'I');
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            msjresp.Text = "";

            string respuestas;
            obtenerDatos();
            respuestas = objclsProveedor.insertarProveedor(objparametros, "A");
            msjresp.Text = respuestas;
                                 
        }

 
        public void BuscarProvedorxID()
        {
            DataSet ds = new DataSet();
            txtbuscarproveedor.Text = Convert.ToString(objeModProveedor.IdProveedor);
            ds = objeModProveedor.buscarIdProveedor();

            txtIDProveedor.Text = ds.Tables[0].Rows[0]["Id_Provee"].ToString();
            txtDescripcion.Text = ds.Tables[0].Rows[0]["Descripcion"].ToString();
            txtEmail.Text = ds.Tables[0].Rows[0]["Correo"].ToString();
            txtSitioWeb.Text = ds.Tables[0].Rows[0]["Sitio_Web"].ToString();
            txtTelefono.Text = ds.Tables[0].Rows[0]["Telefono"].ToString();


            if (ds.Tables[0].Rows[0]["Estado"].ToString() == "A")
            {
                rbestado.SelectedValue = "A";

            }
            else
            {

                rbestado.SelectedValue = "I";


            }



        }

        protected void buscarproveedor_Click(object sender, ImageClickEventArgs e)
        {
            msjresp.Text = "";
            try
            {
                BuscarProvedorxID();
                msjresp.Text = "Datos Encontrados";


            }
            catch(Exception ex)
            {

                msjresp.Text = "No se encontraron datos";
                
            }
        }

        protected void btnGenerar_Click(object sender, EventArgs e)
        {
            clsGeneracionCodigo genearCod = new clsGeneracionCodigo();
            genearCod.Tabla = "Proveedores";
            genearCod.CampoID = "Id_Provee";
            genearCod.PrimerNumero = "";
            String codigoobtenido = genearCod.ObtenerCodigo();
            txtIDProveedor.Text = codigoobtenido;
        }

        protected void nuevoproveedor(object sender, EventArgs e)
        {

            txtDescripcion.Enabled = true;
            txtEmail.Enabled = true;
            txtTelefono.Enabled = true;
            txtSitioWeb.Enabled = true;
            rbestado.Enabled = true;
            btngenerarcode.Enabled = true;


        }

        protected void btneliminarproveedores_Click(object sender, EventArgs e)
        {
            try
            {
                txtbuscarproveedor.Text = Convert.ToString(objeModProveedor.IdProveedor);
                objeModProveedor.borrarProveedor();
                msjresp.Text = "Datos eliminados correctamente";
            }
            catch (Exception ex)
            {
                msjresp.Text = "Se produjo un errorlo al eliminar datos";
            }
        }

        protected void btnactualizar_Click(object sender, EventArgs e)
        {
            txtDescripcion.Enabled = true;
            txtEmail.Enabled = true;
            txtTelefono.Enabled = true;
            txtSitioWeb.Enabled = true;
            rbestado.Enabled = true;
            btngenerarcode.Enabled = true;
            btneditarproveedores.Visible = true;
        }

  




    }
}

