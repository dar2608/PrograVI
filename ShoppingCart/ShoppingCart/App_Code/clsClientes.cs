using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace ShoppingCart.Mantenimientos
{
    class clsClientes
    {
        clsConexion conexion = new clsConexion();
        DataSet ds = new DataSet();

        private int cedula;

        public int Cedula
        {
            get { return cedula; }
            set { cedula = value; }
        }
        private string nombre;

        public String Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        private string apellido1;

        public String Apellido1
        {
            get { return apellido1; }
            set { apellido1 = value; }
        }

        private string apellido2;

        public String Apellido2
        {
            get { return apellido2; }
            set { apellido2 = value; }
        }

        private string telefono;
        public String Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }

        private string correo;
        public String Correo
        {
            get { return correo; }
            set { correo = value; }
        }

          //error en Datetime     
        private DateTime fechanacimiento;
        public DateTime Fechanacimiento
        {
            get { return fechanacimiento; }
            set { fechanacimiento = value; }
        }

        private string pass;
        public String Pass
        {
            get { return pass; }
            set { pass = value; }
        }


       
        public DataSet consultarclientes()
        {
            string sqlconsulta = "select * from Clientes where Cedula = '" + this.Cedula + "'";
            ds = conexion.consultaInformacion(sqlconsulta);
            return ds;
        }

        SqlParameter[] clientes = new SqlParameter[8];

        public void CargarParametros()
        {
            clientes[0] = new SqlParameter("@Cedula", Cedula);
            clientes[1] = new SqlParameter("@Nombre", Nombre);
            clientes[2] = new SqlParameter("@Apellido_Uno", Apellido1);
            clientes[3] = new SqlParameter("@Apellido_Dos", Apellido2);
            clientes[4] = new SqlParameter("@Telefono_Cliente", Telefono);
            clientes[5] = new SqlParameter("@Correo_Cliente", Correo);
            clientes[6] = new SqlParameter("@Fecha_Nacimiento", Fechanacimiento);
            clientes[7] = new SqlParameter("@Password", Pass);


        }
        public void editarcliente()
        {
            CargarParametros();

            string sqlactualizar =

                            " update Categorias set " +
                            " Nombre = @Nombre , " +
                            " Apellido_Uno = @Apellido_Uno " +
                            " Apellido_Dos = @Apellido_Dos " +
                            " Telefono_Cliente = @Telefono_Cliente " +
                            " Correo_Cliente = @Correo_Cliente " +
                            " Fecha_Nacimiento = @Fecha_Nacimiento " +
                            " where Cedula = @Cedula ";

            conexion.executeSqlSentence(sqlactualizar, clientes);
        }

        public void eliminarcliente()
        {
            string sqlEliminar = "Delete from Clientes where Cedula = '" + this.Cedula + "'";

            conexion.executeSqlSentencia(sqlEliminar);
        }
    }
}
