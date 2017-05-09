using _3Capas.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3Capas
{
    public partial class Principalbuscarporid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void boton_buscar_Click(object sender, EventArgs e)
        {
            string nombre = txtId.Text;
            Negocio bll = new Negocio();
            gv_principal.DataSource = bll.obtenerDatosPorNombre(nombre);
            gv_principal.DataBind();
        }
    }
}