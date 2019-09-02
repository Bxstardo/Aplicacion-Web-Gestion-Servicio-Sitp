using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Datos;

namespace Logica
{
    public class Denuncia : Conexion
    {

        private string asunto;
        private string descripcion;       

        public string Asunto
        {
            get { return asunto; }
            set { asunto = value; }
        }
        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }
    }
}
