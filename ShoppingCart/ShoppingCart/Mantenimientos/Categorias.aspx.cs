using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;

namespace ShoppingCart.Mantenimientos
{
    public partial class Categorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

   
        clsModCategorias objeModCategorias = new clsModCategorias();

        clsCategorias objclsCategorias = new clsCategorias();

        Hashtable objparametros = new Hashtable();

        String respuestas = "";
        protected void btngenerarcod(object sender, EventArgs e)
        {
            clsGeneracionCodigo genearCod = new clsGeneracionCodigo();
            genearCod.Tabla = "Categorias";
            genearCod.CampoID = "Id_Cate";
            genearCod.PrimerNumero = "";
            String codigoobtenido = genearCod.ObtenerCodigo();
            txtcodigocategoria.Text = codigoobtenido;
        }

        protected void nuevacategoria(object sender, EventArgs e)
        {

           txtdescripcioncategoria.Enabled = true;
           generarcod.Enabled = true;
           rbestado.Enabled = true;

        }

        protected void btnguardar_click(object sender, EventArgs e)
        {
            msgcate.Text = "";
            respuestas = "";
            obtenerDatos();
            respuestas = objclsCategorias.insertarCategoria(objparametros, "I");
            msgcate.Text = respuestas;

        }




        public void obtenerDatos()
        {
            objparametros.Add("Id_Cate", txtcodigocategoria.Text);
            objparametros.Add("Descripcion", txtdescripcioncategoria.Text);


            if (rbestado.SelectedValue == "A")
            {
                objparametros.Add("Estado", 'A');
            }
            else
            {
                objparametros.Add("Estado", 'I');
            }
        }
        
        protected void btnactualizar_Click(object sender, EventArgs e)
        {

            txtdescripcioncategoria.Enabled = true;
            generarcod.Enabled = true;
            rbestado.Enabled = true;
            btneditarcategoria.Visible = true;
        }

        protected void editarcategoria(object sender, EventArgs e)
        {
            msgcate.Text = "";
            obtenerDatos();
            respuestas = objclsCategorias.insertarCategoria(objparametros, "A");
            msgcate.Text = respuestas;
                 
        }


        public void BuscarCategoriaxID()
        {
            DataSet ds = new DataSet();
            objeModCategorias.Identificacion = txtbuscarcategoria.Text;
            ds = objeModCategorias.buscarIdCategoria();

            txtcodigocategoria.Text = ds.Tables[0].Rows[0]["Id_Cate"].ToString();
            txtdescripcioncategoria.Text = ds.Tables[0].Rows[0]["Descripcion"].ToString();


            if (ds.Tables[0].Rows[0]["Estado"].ToString() == "A")
            {
                rbestado.SelectedValue = "A";
            }
            else
            {
                rbestado.SelectedValue = "I";
            }

        }

        protected void buscarcategoria(object sender, ImageClickEventArgs e)
        {
            msgcate.Text = "";
            try
            {
                BuscarCategoriaxID();
                msgcate.Text = "Datos Encontrados";
            }

            catch
            {
                msgcate.Text = "No se encontraron Datos";

              }
        }


        protected void btneliminarcategoria_Click(object sender, EventArgs e)
        {
            try
            {
                objeModCategorias.Identificacion = txtbuscarcategoria.Text;
                objeModCategorias.borrarCategoria();
                msgcate.Text = "Datos Eliminados Correctamente";

            }
            catch (Exception ex)
            {
                msgcate.Text = "Se produjo un error al eliminar datos";
            }
        }

    

    }
}