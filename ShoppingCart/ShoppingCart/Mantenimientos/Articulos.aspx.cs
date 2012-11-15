using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.IO;

namespace ShoppingCart.Mantenimientos
{
    public partial class Articulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                clsConexion conexion = new clsConexion();
                System.Data.DataSet ds;
                try
                {
                    ds = conexion.consultaInformacion("select Descripcion, Id_Cate from Categorias"); 

                    this.combocategorias.DataSource = ds;
                    combocategorias.DataTextField = "Descripcion";
                    combocategorias.DataValueField = "Id_Cate";
                    combocategorias.DataBind();
                }
                catch
                {

                }
            }
        }


        clsModArticulos objeModArticulos = new clsModArticulos();
        Hashtable objparametros = new Hashtable();
        clsArticulos objclsArticulos = new clsArticulos();
        string respuestas;

        protected void btnguardararticulo_Click(object sender, EventArgs e)
        {
       
            msgarti.Text = "";
            respuestas = "";
            obtenerDatos();
            //using (BinaryReader reader = new BinaryReader(fileimagearti.PostedFile.InputStream))
            //{
            //    objeModArticulos.Imagen = reader.ReadBytes(fileimagearti.PostedFile.ContentLength);
            //}

            respuestas = objclsArticulos.insertarArticulo(objparametros, "I", (byte[])objparametros["Imagen"]);
            msgarti.Text = respuestas;


        }

      
        
        public void obtenerDatos()
        {


            int tama = Convert.ToInt32(fileimagearti.PostedFile.InputStream.Length);
            byte[] imagenContenido = new byte[tama];

            fileimagearti.PostedFile.InputStream.Read(imagenContenido, 0, tama);

            objparametros.Add("Id_Articulo", txtcodigoarticulos.Text);
            objparametros.Add("Id_Cate", txtdescripcion.Text);
            objparametros.Add("Codigo_Barras", txtcodbarras.Text);
            objparametros.Add("Descripcion_Articulo", txtdescripcion.Text);

            objparametros.Add("Imagen", imagenContenido);

            //using (BinaryReader reader = new BinaryReader(fileimagearti.PostedFile.InputStream))
            //{
            //    objeModArticulos.Imagen = reader.ReadBytes(fileimagearti.PostedFile.ContentLength);
            //}
            

                if (rbestadoarticulo.SelectedValue == "A")
                {
                   objparametros.Add("Estado", 'A');
                }
                else
                {
                    objparametros.Add("Estado", 'I');
                }


            
        }

        protected void btneditararticulo_Click(object sender, EventArgs e)
        {
            msgarti.Text = "";
            obtenerDatos();
           // respuestas = objclsArticulos.insertarArticulo(objparametros, "A");
            msgarti.Text = respuestas;



        }

    // Se utilizara despues, sera para ver todo los proveedores de la base de datos

        //protected void verlink_Click(object sender, EventArgs e)
        //{
        //    DataSet ds = new DataSet();

        //    try
        //    {
        //        ds = objeModProveedor.consultaProveedores();
        //        gwProveedores.DataSource = ds;
        //        gwProveedores.DataBind();
        //    }
        //    catch (Exception ex)
        //    {
        //        msjresp.Text = ex.Message;
        //    }

        //}

        public void BuscarArticuloxID()
        {
            DataSet ds = new DataSet();
            objeModArticulos.Id = txtbuscararticulos.Text;
            ds = objeModArticulos.buscarIdArticulo();

            txtdescripcion.Text = ds.Tables[0].Rows[0]["Descripcion_Articulo"].ToString();
            txtcodbarras.Text = ds.Tables[0].Rows[0]["Codigo_Barras"].ToString();
        
           
            //mostrar imagen en el gwarticulo

   


            if (ds.Tables[0].Rows[0]["estado"].ToString() == "A")
            {
                rbestadoarticulo.SelectedValue = "A";

            }
            else
            {

                rbestadoarticulo.SelectedValue = "I";


            }



        }

        protected void nuevoarticulo(object sender, EventArgs e)
        {
            combocategorias.Enabled = true;
            txtcodbarras.Enabled = true;
            fileimagearti.Enabled = true;
            txtdescripcion.Enabled = true;
            rbestadoarticulo.Enabled = true;
        }

        protected void btngenerar_Click(object sender, EventArgs e)
        {
            clsGeneracionCodigo genearCod = new clsGeneracionCodigo();
               genearCod.Tabla = "Articulos";
               genearCod.CampoID = "Id_Articulo";
               genearCod.PrimerNumero = "";
               String codigoobtenido = genearCod.ObtenerCodigo();
               txtcodigoarticulos.Text = codigoobtenido;
        }

        protected void btneliminararticulo_Click(object sender, EventArgs e)
        {
              try
           {
                  objeModArticulos.Id = txtbuscararticulos.Text;
                  objeModArticulos.borrarArticulo();
                  msgarti.Text = "Datos eliminados correctamente";
    
           }
            catch (Exception ex)
           {
               msgarti.Text = "Se produjo un errorlo al eliminar datos";
           }
        }

        protected void btnbuscararticulo_Click(object sender, ImageClickEventArgs e)
        {
            msgarti.Text = "";
               try
                {
                   BuscarArticuloxID();
                   msgarti.Text = "Datos Encontrados";
          
                }
             catch
              {

                    msgarti.Text = "No se encontraron datos";
                  
               }
        }

                        
        }
    
}