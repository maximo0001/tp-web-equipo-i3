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
            if (Session["ListaObjetos"] == null)
            {
                Session["ListaObjetos"] = new List<ArticuloCarrito>();
            }

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

        protected void btnAgregarCarrito_Click(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            int idArt = int.Parse(Request.QueryString["Id"]);
            Articulo art = negocio.VerArticulo(idArt);
            ArticuloCarrito aux = new ArticuloCarrito();
            List<ArticuloCarrito> changuito = (List<ArticuloCarrito>)Session["ListaObjetos"];

            if(!(changuito.Exists(x => x.IdArticulo == idArt)))
            {
                aux.IdArticulo = idArt;
                aux.Codigo = art.Codigo;
                aux.Nombre = art.Nombre;
                aux.Precio = art.Precio;
                aux.Cantidad = int.Parse(txtCantidad.Text);
                changuito.Add(aux);
            }
            else
            {
                aux.Cantidad = int.Parse(txtCantidad.Text);
            }

                Session["ListaObjetos"] = changuito;
                Response.Redirect("Carrito.aspx");
        }
    }
}