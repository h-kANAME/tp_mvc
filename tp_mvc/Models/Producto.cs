using System;
using System.Collections.Generic;

namespace tp_mvc
{
    public class Producto : IComparable<Producto>
    {
        public int ProductoId { get; set; }
        public string Nombre { get; set; }
        public Double Precio { get; set; }
        public int Cantidad { get; set; }
        public Categoria Cat { get; set; }
        public int CatId { get; set; }

        public ICollection<Carro> CarroProducto { get; set; }

        public ICollection<Compra> CompraProducto { get; set; }
        public List<Productos_compra> Productos_compras { get; set; }
        public List<Carro_productos> Carro_productos { get; set; }

        public Producto(int Id, string Nombre, Double Precio, int Cantidad, Categoria Cat)
        {
            this.ProductoId = Id;
            this.Nombre = Nombre;
            this.Precio = Precio;
            this.Cantidad = Cantidad;
            this.Cat = Cat;
        }

        public Producto()
        {

        }

        public int CompareTo(Producto other)
        {
            return Nombre.CompareTo(other.Nombre);
        }

        public override string ToString()
        {
            return $"{ProductoId}|{Nombre}|{Precio}|{Cantidad}|{Cat.CatId}|{Cat.Nombre}";
        }

        public string[] toArray()
        {
            return new string[] { ProductoId.ToString(), Nombre.ToString(), Precio.ToString(), Cantidad.ToString(), CatId.ToString() };
        }
    }
}
