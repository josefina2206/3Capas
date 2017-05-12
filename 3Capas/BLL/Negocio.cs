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

        public void insertar(String nombre, String apellido, String email, String ciudad, bool es_jugador, string posicion, string password, int numero, string foto )
        {
            data.insertar(nombre, apellido, email, ciudad, es_jugador, posicion, password, numero, foto);
        }
    }
}