using System;
using System.Collections.Generic;


namespace tp_mvc
{
    public class Carro
    {

        public int CarroId { get; set; }
        public Usuario Usuario { get; set; }
        public int UsuarioId { get; set; }
        public ICollection<Producto> ProductosCompra { get; set; }
        public List<Carro_productos> Carro_productos { get; set; }
        public Carro(int id, Producto producto, int cantidad)
        {
            CarroId = id;
            
        }

        public Carro(int id)
        {
            CarroId = id;
           
        }

        public Carro(int id, int usuarioId)
        {
            CarroId = id;
            UsuarioId = usuarioId;
           
        }

        public Carro() { }

       

    }
}
