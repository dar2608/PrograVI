using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace ShoppingCart.Mantenimientos
{
    class clsGeneracionCodigo
    {
        private String tabla;

        public String Tabla
        {
            get { return tabla; }
            set { tabla = value; }
        }
        private String primerNumero;

        public String PrimerNumero
        {
            get { return primerNumero; }
            set { primerNumero = value; }
        }
        private String campoID;

        public String CampoID
        {
            get { return campoID; }
            set { campoID = value; }
        }




        clsConexion conexion = new clsConexion();

        public String ObtenerCodigo()
        {

            String codigo = "";
            Boolean loop = true;


            int codProd = 1;
            String ceros = AgregarCeros(codProd.ToString());
            codigo = this.PrimerNumero + ceros + codProd.ToString();


            while (loop == true)
            {
                DataSet ds = new DataSet();
                ds = conexion.consultaInformacion("select " + this.CampoID + " from " + this.Tabla + " where " + this.CampoID + "='" + codigo + "'");
                //como hacer la consulta más optima, tiempo en ejecución
                if (ds.Tables[0].Rows.Count > 0)
                {
                    codProd = codProd + 1;
                    ceros = AgregarCeros(codProd.ToString());
                    codigo = this.PrimerNumero + ceros + codProd.ToString();

                }
                else
                {

                    loop = false;

                }
            }
            return codigo;
        }


        public String AgregarCeros(String codigo)
        {
            string formato = "####";
            String valor = "";

            for (int i = codigo.Length; i < formato.Length; i++)
            {
                valor = "0" + valor;
            }

            return valor;
        }
    }
}
