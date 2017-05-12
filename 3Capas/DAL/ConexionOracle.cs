﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OracleClient;
using System.Data;

namespace _3Capas.DAL
{
    public class ConexionOracle: Conexion
    {
        OracleConnection conexion;
        OracleCommand comando;
        OracleDataAdapter adaptador;

        // metodo que instancia los objetos de conexion
        protected void conectar()
        {
            try
            {
                conexion = new OracleConnection(cadena_conexion);
                comando = new OracleCommand();
                comando.Connection = conexion;
                adaptador = new OracleDataAdapter();
            }
            catch { }
        }

        // consulta basica select, update o delete
        public string select(string consulta)
        {
            try
            {
                conectar();
                comando.CommandText = consulta;
                comando.CommandTimeout = timeout;
                conexion.Open();
                Object reader = comando.ExecuteScalar();

                if (reader != null)
                {
                    conexion.Close();
                    conexion.Dispose();
                    if (reader.ToString() == "1") return "OK";
                    else return "ERROR";
                }
                else
                {
                    conexion.Close();
                    conexion.Dispose();
                    return "ERROR CONEXION";
                }
            }
            catch { return null; }
        }

        // retorna un select en forma de datatable
        public DataTable select_dt(string sql)
        {
            try
            {
                conectar();
                DataTable dt = new DataTable();
                comando.CommandText = sql;
                comando.CommandTimeout = timeout;
                conexion.Open();

                adaptador.SelectCommand = comando;
                adaptador.Fill(dt);
                conexion.Close();
                comando.Dispose();

                return dt;
            }
            catch { return null; }
        }

        public void insertar_oracle_dt(string sql)
        {
            try
            {
                conectar();

                comando.CommandText = sql;
                comando.CommandTimeout = timeout;
                conexion.Open();

                comando.ExecuteNonQuery();

                conexion.Close();
                comando.Dispose();

                
            }
            catch { }
        }
    }
}