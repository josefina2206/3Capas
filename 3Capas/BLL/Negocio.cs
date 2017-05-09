using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using _3Capas.DAL;
using System.Data;

namespace _3Capas.BLL
{
    public class Negocio
    {
        private Datos data = new Datos();
  
        // Proceso de la informacion para incorporarle una nueva columna a los registros
        public DataTable obtenerDatos()
        {
            DataTable dt = data.obtenerDatos();
            dt.Columns.Add("Perfil");

            foreach (DataRow fila in dt.Rows)
            {
                fila["Perfil"] = "Ver Foto de " + fila["NOMBRE"];
            }

            return dt;
        }

        public DataTable obtenerDatosPorNombre(String nombre)
        {
            DataTable dt = data.obtenerDatosPorNombre(nombre);
            dt.Columns.Add("Perfil");

            foreach (DataRow fila in dt.Rows)
            {
                fila["Perfil"] = "Ver Foto de " + fila["NOMBRE"];
            }

            return dt;
        }

        public void insertar(String nombre, String apellido, String email, String ciudad)
        {
            data.insertar(nombre, apellido, email, ciudad);
        }
    }
}