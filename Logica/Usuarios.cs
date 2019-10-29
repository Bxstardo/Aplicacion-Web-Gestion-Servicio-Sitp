using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//----
using Datos;
using System.Data;

namespace Logica
{
    public class Usuarios : Conexion
    {
        private long _id_usuario;
        private string _nombres; //digitos 100
        private string _apellidos; //digitos 100
        private string _direccion; //digitos 100
        private long _telefono;
        private string _email; //digitos 120
        private string _barrio; //digitos 60
        private string _localidad; //digitos 60
        private long _id_ciudad;
        private long _id_tipo_usuario;

        public long id_usuario { get { return _id_usuario; } set { _id_usuario = value; } }
        public string nombres { get { return _nombres; } set { _nombres = value; } }
        public string apellidos { get { return _apellidos; } set { _apellidos = value; } }
        public string direccion { get { return _direccion; } set { _direccion = value; } }
        public long telefono { get { return _telefono; } set { _telefono = value; } }
        public string email { get { return _email; } set { _email = value; } }
        public string barrio { get { return _barrio; } set { _barrio = value; } }
        public string localidad { get { return _localidad; } set { _localidad = value; } }
        public long id_ciudad { get { return _id_ciudad; } set { _id_ciudad = value; } }
        public long id_tipo_usuario { get { return _id_tipo_usuario; } set { _id_tipo_usuario = value; } }

        public bool InsertarUsuario()
        {
            string Insertar =
                "EXEC InsertarUsuario @id_usuario = " + this._id_usuario + ",@nombres ='" + this._nombres + "',@apellidos ='" + this._apellidos + "',@direccion ='" + this._direccion +
                "',@telefono =" + this._telefono + ",@email ='" + this._email + "',@barrio ='" + this._barrio + "',@localidad ='" + this._localidad + "',@id_ciudad =" + this._id_ciudad +
                ",@id_tipo_usuario =" + this._id_tipo_usuario;

            bool respuestaSQL = EjecutarSQL(Insertar);
            return respuestaSQL;
        }
        public bool ActualizarUsuario()
        {
            string Actualizar =
                "EXEC ActualizarUsuario @nombres ='" + this._nombres + "',@apellidos ='" + this._apellidos + "',@direccion ='" + this._direccion +
                "',@telefono =" + this._telefono + ",@email ='" + this._email + "',@barrio ='" + this._barrio + "',@localidad ='" + this._localidad + "',@id_ciudad =" + this._id_usuario +
                ",@id_tipo_usuario =" + this._id_tipo_usuario;

            bool respuestaSQL = EjecutarSQL(Actualizar);
            return respuestaSQL;
        }

        public DataSet ConsultarUsuIden(string Valor, string Columna)
        {
            string Consultar = "EXEC ConsultarUsuario @Valor ='" + Valor + "',@Columna ='" + Columna + "'";
            DataSet ConsultarUsuIdentificacion = ConsultarSQL(Consultar);
            return ConsultarUsuIdentificacion;
        }
    }
}
