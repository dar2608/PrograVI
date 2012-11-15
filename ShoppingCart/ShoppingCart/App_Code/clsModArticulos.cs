using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace ShoppingCart.Mantenimientos
{
    class clsModArticulos
    {
        private string id;

        public string Id
        {
            get { return id; }
            set { id = value; }
        }
        private string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }
        private string categoria;

        public string Categoria
        {
            get { return categoria; }
            set { categoria = value; }
        }
        private string estado;

        public string Estado
        {
            get { return estado; }
            set { estado = value; }
        }

        private string codBarra;
        public string CodBarra
        {
            get { return codBarra; }
            set { codBarra = value; }
        }


        private byte[] imagen;

        public byte[] Imagen
        {
            get { return imagen; }
            set { imagen = value; }
        }

        String sentenciaSQL;

        clsConexion objBaseDatos = new clsConexion();

        public void insertarArticulo()
        {
            SqlParameter[] parametros = new SqlParameter[6];
            parametros[0] = new SqlParameter("@Id_Articulo", this.Id);

            parametros[1] = new SqlParameter("@Id_Cate", this.Categoria);
            
            parametros[2] = new SqlParameter("@Codigo_Barras", this.CodBarra);
            parametros[3] = new SqlParameter("@Descripcion_Articulo", this.Descripcion);
            parametros[4] = new SqlParameter("@Imagen", this.Imagen);
            parametros[5] = new SqlParameter("@Estado", this.Estado);



            sentenciaSQL = " insert into Articulos " +
                           " values (@Id_Articulo, @Id_Cate, @Codigo_Barras, @Descripcion_Articulo, @Imagen, @Estado ) ";

            objBaseDatos.executeSqlSentence(sentenciaSQL, parametros);
        }


        public void borrarArticulo()
        {
            SqlParameter[] parametros = new SqlParameter[1];
            parametros[0] = new SqlParameter("@Id_Articulo", this.Id);


            sentenciaSQL = "delete from Articulos where Id_Articulo = @Id_Articulo";

            objBaseDatos.executeSqlSentence(sentenciaSQL, parametros);
        }


        public void actualizarArticulo()
        {
            SqlParameter[] parametros = new SqlParameter[6];
            parametros[0] = new SqlParameter("@Id_Articulo", this.Id);

            parametros[1] = new SqlParameter("@Id_Cate", this.Categoria);

            parametros[2] = new SqlParameter("@Codigo_Barras", this.CodBarra);
            parametros[3] = new SqlParameter("@Descripcion_Articulo", this.Descripcion);
            parametros[4] = new SqlParameter("@Imagen", this.Imagen);
            parametros[5] = new SqlParameter("@Estado", this.Estado);



            sentenciaSQL = " update Articulos set " +
                           
                            " Id_Cate = @Id_Cate , " +
                            " Codigo_Barras = @Codigo_Barras, " +
                            " Descripcion_Articulo = @Descripcion_Articulo , " +
                            " imagen = @Imagen " +
                            " Estado = @Estado, " +
                            " where Id_Articulo = @Id_Articulo ";

            objBaseDatos.executeSqlSentence(sentenciaSQL, parametros);
        }


        public DataSet buscarIdArticulo()
        {

            DataSet dsConsulta = null;


            sentenciaSQL = "select * from Articulos where Id_Articulo='" + this.Id + "'";

            dsConsulta = objBaseDatos.consultaInformacion(sentenciaSQL);


            return dsConsulta;

        }

        public DataSet consultaArticulo()
        {


            DataSet ds = new DataSet();


            ds = objBaseDatos.consultaInformacion("select Id_Articulo, Id_Cate, Codigo_Barras, Descripcion_Articulo, Imagen, Estado from Articulos");
            return ds;



        }
    }
}
