using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace ShoppingCart.Mantenimientos
{
    class clsConexion
    {
        private SqlConnection cnBaseDatos;
        private SqlCommand sqlCmdConsulta;
        private SqlDataAdapter sqlDaConsulta;
        private string strConexion;
        /*"Integrated Security= true"
        Abre la conexion a la base de datos*/
        private void abreConexion()
        {
            /* DataSource  = servidor donde se conectan
               Initial Catalog =  base datos a la que me voy a conectar
               User / Password  =  usuario /Password de coneccion*/

            this.strConexion = @"Data Source=localhost;Initial Catalog=BDCompras;Integrated security =  true";
            this.cnBaseDatos = new SqlConnection();
            this.cnBaseDatos.ConnectionString = strConexion;
            this.cnBaseDatos.Open();
        }
        public void executeSqlSentencia(String sqlCommandText)
        {
            abreConexion();
            sqlCmdConsulta = new SqlCommand();

            sqlCmdConsulta.CommandText = sqlCommandText;
            sqlCmdConsulta.Connection = this.cnBaseDatos;

            sqlCmdConsulta.ExecuteNonQuery();
        }
        //ejecuta la sentencia SQL que se especifica mediante el parámetro
        //sqlCommandText

        public void executeSqlSentence(String sqlCommandText, SqlParameter[] parameter)
        {
            abreConexion();
            sqlCmdConsulta = new SqlCommand();
            if (parameter != null)
            {
                for (int i = 0; i < parameter.Length; i++)
                {
                    sqlCmdConsulta.Parameters.Add(parameter[i]);
                }
            }
            sqlCmdConsulta.CommandText = sqlCommandText;//this.getInsertClause();
            sqlCmdConsulta.Connection = this.cnBaseDatos;
            sqlCmdConsulta.ExecuteNonQuery();
        }
        //Procedimiento que consulta información definida por  parámetros del
        //query, retorna un dataset con la información

        public System.Data.DataSet consultaInformacion(String queryToExecute)
        {

            String resultadoOperacion;
            System.Data.DataSet sqlDsConsulta = new System.Data.DataSet(); ;
            resultadoOperacion = "EXITOSO";
            abreConexion();
            try
            {
                //Crea las instancias
                this.sqlCmdConsulta = new SqlCommand();
                this.sqlDaConsulta = new SqlDataAdapter();

                //Construye el comando Select
                sqlCmdConsulta.Connection = cnBaseDatos;
                sqlCmdConsulta.CommandText = queryToExecute;
                sqlCmdConsulta.CommandType = System.Data.CommandType.Text;
                sqlDaConsulta.SelectCommand = sqlCmdConsulta;
                //Carga el DataSet
                this.sqlDaConsulta.Fill(sqlDsConsulta);
            }
            catch (SqlException exc)
            {

                //resultadoOperacion = "Error(" & exc.Number.ToString & "): " & exc.Messag;
            }
            return sqlDsConsulta;
        }

        public SqlDataReader Consultas(string sqlText)
        {
            SqlDataReader dt;
            try
            {
                abreConexion();
                sqlCmdConsulta = new SqlCommand();

                sqlCmdConsulta.Connection = cnBaseDatos;
                sqlCmdConsulta.CommandType = System.Data.CommandType.Text;
                sqlCmdConsulta.CommandText = sqlText;
                dt = sqlCmdConsulta.ExecuteReader();
            }
            catch (Exception ex)
            {
                throw;
            }
            return dt;
        }
        //proceso de prueba

        public SqlDataReader consultaInformacion2(string queryToExecute)
        {
            // = new SqlConnection();
            SqlDataReader dataReader;
            try
            {

                abreConexion();
                sqlCmdConsulta = new SqlCommand();
                //se asignar los parametros al sqlCommand

                sqlCmdConsulta.Connection = cnBaseDatos;
                sqlCmdConsulta.CommandType = System.Data.CommandType.Text;
                sqlCmdConsulta.CommandText = queryToExecute; //" Insert into cliente ( codCliente, nombre) values  (1, 'Flor Campbell') ";
                dataReader = sqlCmdConsulta.ExecuteReader();
                //cierraConexion();
            }
            catch (Exception ex)
            {

                throw;
            }

            return dataReader;

        }

        internal void executeSqlSentencia(string sqlGuardar, SqlParameter[] categoria)
        {
            throw new NotImplementedException();
        }
    }
}
