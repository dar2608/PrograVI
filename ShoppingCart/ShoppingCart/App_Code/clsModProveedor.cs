using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using ShoppingCart.Mantenimientos;




namespace ShoppingCart
{
    class clsModProveedor
    {
           public clsModProveedor()
        {
            //
            // TODO: Agregar aquí la lógica del constructor
            //
        }

     
        
        //clsConexion objBaseDatos = new clsConexion();

       private int _IdProveedor;
       
        public int IdProveedor
        {
            get { return _IdProveedor; }
            set { _IdProveedor = value; }
        }

        private string _descripcion;
        public string Descripcion
        {
            get { return _descripcion; }
            set { _descripcion = value; }
        }

        private string _email;
       
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }

        private int _telefono;
        public int Telefono
        {
            get { return _telefono; }
            set { _telefono = value; }
        }

        private string _sitioWeb;
        public string SitioWeb
        {
            get { return _sitioWeb; }
            set { _sitioWeb = value; }
        }

        private char _estado;
        public char Estado
        {
            get { return _estado; }
            set { _estado = value; }
        }

        String sentenciaSQL;
        clsConexion objBaseDatos = new clsConexion();
    
        public void insertarProveedor()
        {
            SqlParameter[] parametros = new SqlParameter[6];
            parametros[0] = new SqlParameter("@Id_Provee", this.IdProveedor);
            parametros[1] = new SqlParameter("@Descripcion", this.Descripcion);
            parametros[2] = new SqlParameter("@Correo", this.Email);
            parametros[3] = new SqlParameter("@Telefono", this.Telefono);
            parametros[4] = new SqlParameter("@Sitio_Web", this.SitioWeb);
            parametros[5] = new SqlParameter("@Estado", this.Estado);


            sentenciaSQL = " insert into Proveedores " +
                           " values (@Id_Provee, @Descripcion, @Correo, @Telefono, @Sitio_Web, @Estado) ";

            objBaseDatos.executeSqlSentence(sentenciaSQL, parametros);
        }


        public void borrarProveedor()
        {
            SqlParameter[] parametros = new SqlParameter[1];
            parametros[0] = new SqlParameter("@Id_Provee", this.IdProveedor);


            sentenciaSQL = "delete from proveedores where Id_Provee = @Id_Provee";

            objBaseDatos.executeSqlSentence(sentenciaSQL, parametros);
        }


        public void actualizarProveedor()
        {
            SqlParameter[] parametros = new SqlParameter[6];
            parametros[0] = new SqlParameter("@Id_Provee", this.IdProveedor);
            parametros[1] = new SqlParameter("@Descripcion", this.Descripcion);
            parametros[2] = new SqlParameter("@Correo", this.Email);
            parametros[3] = new SqlParameter("@Telefono", this.Telefono);
            parametros[4] = new SqlParameter("@Sitio_Web", this.SitioWeb);
            parametros[5] = new SqlParameter("@Estado", this.Estado);


            sentenciaSQL = " update Proveedores set " +
                            " Descripcion = @Descripcion , " +
                            " correo = @Correo , " +
                            " Telefono = @Telefono , " +
                            " Stio_Web = @Sitio_Web , " +
                            " Estado = @Estado " +
                            " where Id_Provee = @Id_Provee ";

            objBaseDatos.executeSqlSentence(sentenciaSQL, parametros);
        }


        public DataSet buscarIdProveedor()
        {
            DataSet dsConsulta = null;


            sentenciaSQL = "select * from Proveedores where Id_Provee='" + this.IdProveedor + "'";

            dsConsulta = objBaseDatos.consultaInformacion(sentenciaSQL);


            return dsConsulta;

        }

        public DataSet consultaProveedores()
        {


            DataSet ds = new DataSet();


            ds = objBaseDatos.consultaInformacion("select Id_Provee, Descripcion from Proveedores");
            return ds;



        }
    }

}

