using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Datos;
using System.Data;

namespace Logica
{
    public class Noticia : Conexion
    {
        private long _id_noticia;
        private string _titulo_noticia; //300 digitos
        private string _descripcion_noticia; //3000 digitos
        private long _id_usuario;

        public long id_noticia { get { return _id_noticia; } set { _id_noticia = value; } }
        public string titulo_noticia { get { return _titulo_noticia; } set { _titulo_noticia = value; } }
        public string descripcion_noticia { get { return _descripcion_noticia; } set { _descripcion_noticia = value; } }
        public long id_usuario { get { return _id_usuario; } set { _id_usuario = value; } }

        public bool InsertarNoticia()
        {
            string Insertar = "EXEC InsertarNoticia @titulo='"+_titulo_noticia+"',@descripcion ='"+_descripcion_noticia+"',@usuario ="+_id_usuario;
            bool respuestaSQL = EjecutarSQL(Insertar);
            return respuestaSQL;
        }
    }
}
