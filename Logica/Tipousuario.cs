using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//------
using Datos;
using System.Data;

namespace Logica
{
    public class Tipousuario : Conexion
    {
        private int _id_tipo_usuario; //Autonumerable
        private string _nombre_rol; //digitos 60

        public int id_tipo_usuario { get { return _id_tipo_usuario; } set { _id_tipo_usuario = value; } }
        public string nombre_rol { get { return _nombre_rol; } set { _nombre_rol = value; } }

        public DataSet ConsultarTipoUsuario(string UserName)
        {
            string Consultar = "EXEC ConsultarTipoUsuario @NombreUserName ='" + UserName + "'";
            DataSet ConsultarTipUsuario = ConsultarSQL(Consultar);
            return ConsultarTipUsuario;
        }
    }
}
