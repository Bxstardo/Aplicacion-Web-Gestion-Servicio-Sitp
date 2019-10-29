using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//-------
using Datos;
using System.Data;

namespace Logica
{
    public class Ciudad : Conexion
    {
        private int _id_ciudad;
        private string _nombre_ciudad; //digitos 60

        public int id_ciudad { get { return _id_ciudad; } set { _id_ciudad = value; } }
        public string nombre_ciudad { get { return _nombre_ciudad; } set { _nombre_ciudad = value; } }

        public bool InsertarCiudad()
        {
            string Insertar = "EXEC InsertarCiudad @nombre_ciudad ='" + _nombre_ciudad + "'";
            bool respuestaSQL = EjecutarSQL(Insertar);
            return respuestaSQL;
        }
        public DataSet ConsultarCiudades()
        {
            string Consultar = "EXEC ConsultarCiudades";
            DataSet ConsultaCiudades = ConsultarSQL(Consultar);
            return ConsultaCiudades;
        }
    }
}
