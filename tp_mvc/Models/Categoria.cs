using System;
using System.Collections.Generic;

namespace tp_mvc
{
    public class Categoria : IComparable<Categoria>
    {
        public int CatId { get; set; }
        public string Nombre { get; set; }

        public List<Producto> Productos { get; set; }

        public Categoria() {}
        public Categoria(int id, string nombre)
        {
            CatId = id;
            Nombre = nombre;
        }


        public int CompareTo(Categoria other)
        {
            return Nombre.CompareTo(other.Nombre);
        }

        public override string ToString()
        {
            return $"{CatId}|{Nombre}";
        }

        public string[] toArray()
        {
            return new string[] { CatId.ToString(), Nombre.ToString() };
        }
    }
}
