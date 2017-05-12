using _3Capas.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3Capas
{
    public partial class Insertar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string apellido = txtApellido.Text;
            string email = txtEmail.Text;
            string ciudad = txtCiudad.Text;
            bool es_jugador = radioesjugador.Checked;
            string posicion = txtposicion.Text;
            string password = txtpassword.Text;
            int numero = Convert.ToInt32(txtnumero.Text);
            string foto = txtfoto.Text;

            Negocio bll = new Negocio();
            bll.insertar(nombre, apellido, email, ciudad, es_jugador, posicion, password, numero, foto);
        }
    }
}