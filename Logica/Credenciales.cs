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
    public class Credenciales : Conexion
    {
        private int _id_credenciales;
        private long _id_usuario;
        private string _usuario; //digitods 30
        private string _contraseña; //digitos 30

        public int id_credenciales { get { return _id_credenciales; } set { _id_credenciales = value; } }
        public long id_usuario { get { return _id_usuario; } set { _id_usuario = value; } }
        public string usuario { get { return _usuario; } set { _usuario = value; } }
        public string contraseña { get { return _contraseña; } set { _contraseña = value; } }

        public bool InsertarCredenciales()
        {
            string Insertar = "EXEC InsertarCredenciales @id_usuario =" + this._id_usuario + "," +
                "@usuario ='" + this._usuario + "',@contraseña ='" + this._contraseña + "'";
            bool respuestaSQL = EjecutarSQL(Insertar);
            return respuestaSQL;
        }
        public DataSet ConsultarCredenciales(string usuario, string contraseña)
        {
            string Login = "EXEC ConsultarLogin @Usuario ='" + usuario + "', " +
                "@Contraseña ='" + contraseña + "'";
            DataSet ConsultaLogin = ConsultarSQL(Login);
            return ConsultaLogin;
        }

        public DataSet ConsultarCredenciales1(string Valor,string Columna)
        {
            string Login = "EXEC ConsultarCredenciales @Valor ='" + Valor + "', " +
                "@Columna ='" + Columna + "'";
            DataSet ConsultaLogin = ConsultarSQL(Login);
            return ConsultaLogin;
        }
    }
}
