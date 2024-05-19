using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPWeb_equipo_i3
{
    public partial class DetalleArticulo : System.Web.UI.Page
    {
        public List<Imagen> ListaImagenes{ get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            ImagenNegocio imagenNegocio = new ImagenNegocio();
            int idArt = int.Parse(Request.QueryString["Id"]);
            
            Articulo art = negocio.VerArticulo(idArt);
            lblNombreArt.Text = art.Nombre;
            lblPU.Text = "$" + art.Precio.ToString();
            lblCodigo.Text = "Codigo: " + art.Codigo.ToString();
            lblDescripcion.Text = "Descripcion: " + art.Descripcion.ToString();


            ListaImagenes = imagenNegocio.Listar(idArt);
            RepeaterImagen.DataSource = ListaImagenes;
            RepeaterImagen.DataBind();  
        }
    }
}