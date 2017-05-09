using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace _3Capas.DAL
{
    public class Datos: Conexion
    {
        public DataTable obtenerDatos()
        {
            try
            {
                string sql = "exec sp_getUsuarios";
                DataTable tabla = select_dt(sql);

                if ((tabla != null) & (tabla.Rows.Count > 0))
                {
                    return tabla;
                }
                else { return null; }
                    
            }
            catch { return null; }
        }

        public DataTable obtenerDatosPorNombre(String nombre)
        {
            try
            {
                string sql = "exec sp_getUsuariosPorNombre '"+nombre+"'";
                DataTable tabla = select_dt(sql);

                if ((tabla != null) & (tabla.Rows.Count > 0))
                {
                    return tabla;
                }
                else { return null; }

            }
            catch { return null; }
        }

        public void insertar(String nombre, String apellido, String email, String ciudad)
        {
            try
            {
                string sql = "exec insertarUsuario '" + nombre + "', '"+ apellido+ "', '"+email+ "', '"+ciudad+"'";
                insertar_dt(sql);
            }
            catch { }
        }
    }
}