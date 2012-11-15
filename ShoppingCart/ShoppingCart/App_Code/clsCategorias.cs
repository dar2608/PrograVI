using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace ShoppingCart.Mantenimientos
{
    class clsCategorias
    {
        clsModCategorias objCategoria = new clsModCategorias();

        public string insertarCategoria(Hashtable parametro, String Accion) //hashtable como contenedor que junta todas las variables en una sola
        {


            string respuesta = "";

            try
            {
                objCategoria.Identificacion = Convert.ToString(parametro["Id_Cate"]);
                objCategoria.Descripcion = Convert.ToString(parametro["Descripcion"]);
                objCategoria.Estado = Convert.ToString(parametro["Estado"]);


                if (Accion == "I")
                {
                    objCategoria.insertarCategorias();
                }
                if (Accion == "A")
                {
                    objCategoria.actualizarCategorias();
                }
                respuesta = "Datos guardados correctamente";
                return respuesta;

            }
            catch (Exception)
            {
                respuesta = "Error al guardar datos, Consulte con el administrador.";
                return respuesta;

            }
        }
    }
}
