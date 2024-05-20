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
    public partial class Carrito : System.Web.UI.Page
    {
        public List<ArticuloCarrito> CarritoList { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ListaObjetos"] == null)
            {
                Session["ListaObjetos"] = new List<ArticuloCarrito>();
            }

            CarritoList = (List<ArticuloCarrito>)Session["ListaObjetos"];
            dgvCarrito .DataSource = CarritoList;
            dgvCarrito.DataBind();

            float precioTotal = 0;
            foreach (var item in CarritoList)
            {
                precioTotal += (item.Cantidad * item.Precio);
            }

            lblTotal.Text = precioTotal.ToString();
        }

    }
}