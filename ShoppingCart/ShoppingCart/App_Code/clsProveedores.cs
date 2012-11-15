using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;




namespace ShoppingCart
{
            
    class clsProveedores
    {
        public clsProveedores()
        {
            //
            // TODO: Agregar aquí la lógica del constructor
            //
        }


        clsModProveedor objProveedor = new clsModProveedor(); 

        public string insertarProveedor(Hashtable parametro, String Accion)
        {
            string respuesta = "";

            try
            {
                objProveedor.IdProveedor = Convert.ToInt32(parametro["Id_Provee"]);
                objProveedor.Descripcion = Convert.ToString(parametro["Descripcion"]);
                objProveedor.Email = Convert.ToString(parametro["Correo"]);
                objProveedor.Telefono = Convert.ToInt32(parametro["Telefono"]);
                objProveedor.SitioWeb = Convert.ToString(parametro["Sitio_Web"]);
                objProveedor.Estado = Convert.ToChar(parametro["Estado"]);

                if (Accion == "I")
                {
                    objProveedor.insertarProveedor();
                }
                if (Accion == "A")
                {
                    objProveedor.actualizarProveedor();
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




