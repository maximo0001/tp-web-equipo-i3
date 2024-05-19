using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class ArticuloCarrito
    {
        public int IdArticulo { get; set; }
        //public int IdArtCarrito { get; set; }
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public float Precio { get; set; }
        public int Cantidad { get; set; }
        //public Articulo Articulo { get; set; }
    }
}
