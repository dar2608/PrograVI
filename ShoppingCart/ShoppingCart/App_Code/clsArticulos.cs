using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace ShoppingCart.Mantenimientos
{
    class clsArticulos
    {
        clsModArticulos objArticulo = new clsModArticulos();

        public string insertarArticulo(Hashtable parametros, String Accion, byte[] imagen)
        {
            string respuesta = "";


           try
            {
                objArticulo.Id = Convert.ToString(parametros["Id_Articulo"]);
                objArticulo.Categoria = Convert.ToString(parametros["Id_Cate"]);
                objArticulo.CodBarra = Convert.ToString(parametros["Codigo_Barras"]);
                objArticulo.Descripcion = Convert.ToString(parametros["Descripcion_Articulo"]);
                objArticulo.Imagen = (byte[])parametros["Imagen"];
                objArticulo.Estado = Convert.ToString(parametros["Estado"]);

                


                if (Accion == "I")
                {
                    objArticulo.insertarArticulo();
                }
                if (Accion == "A")
                {
                    objArticulo.actualizarArticulo();
                }
                respuesta = "Datos guardados correctamente";
                return respuesta;

            }
            catch (Exception ex)
            {
                respuesta = "Error al guardar datos, Consulte con el administrador.";
                return respuesta;

            }
        }
    }
}
