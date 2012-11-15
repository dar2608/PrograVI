using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ShoppingCart.Mantenimientos
{
    class clsModCategorias
    {
        private string identificacion;

        public string Identificacion
        {
            get { return identificacion; }
            set { identificacion = value; }
        }
        private string descripcion;
        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }
        private string estado;
        public string Estado
        {
            get { return estado; }
            set { estado = value; }
        }
        
        String sentenciaSQL;
        clsConexion objBaseDatos = new clsConexion();

        public void insertarCategorias()
        {
            SqlParameter[] parametros = new SqlParameter[3];
            parametros[0] = new SqlParameter("@Id_Cate", this.Identificacion);
            parametros[1] = new SqlParameter("@Descripcion", this.Descripcion);
            parametros[2] = new SqlParameter("@Estado", this.Estado);



            sentenciaSQL = " insert into Categorias " +
                           " values (@Id_Cate, @Descripcion, @Estado) ";

            objBaseDatos.executeSqlSentence(sentenciaSQL, parametros);
        }


        public void borrarCategoria()
        {
            SqlParameter[] parametros = new SqlParameter[1];
            parametros[0] = new SqlParameter("@Id_Cate", this.Identificacion);


            sentenciaSQL = "delete from Categorias where Id_Cate = @Id_Cate";

            objBaseDatos.executeSqlSentence(sentenciaSQL, parametros);
        }


        public void actualizarCategorias()
        {
            SqlParameter[] parametros = new SqlParameter[3];
            parametros[0] = new SqlParameter("@Id_Cate", this.Identificacion);
            parametros[1] = new SqlParameter("@Descripcion", this.Descripcion);
            parametros[2] = new SqlParameter("@Estado", this.Estado);

            sentenciaSQL = " update Categorias set " +
                            " Descripcion = @Descripcion , " +
                            " estado = @Estado " +
                            " where Id_Cate = @Id_Cate ";

            objBaseDatos.executeSqlSentence(sentenciaSQL, parametros);
        }


        public DataSet buscarIdCategoria()
        {
            DataSet dsConsulta = null;


            sentenciaSQL = "select * from Categorias where Id_Cate='" + this.Identificacion + "'";

            dsConsulta = objBaseDatos.consultaInformacion(sentenciaSQL);


            return dsConsulta;

        }

        public DataSet consultaCategorias()
        {


            DataSet ds = new DataSet();


            ds = objBaseDatos.consultaInformacion("select Id_Cate, Descripcion, Estado from Categorias");
            return ds;



        }
    }
}
