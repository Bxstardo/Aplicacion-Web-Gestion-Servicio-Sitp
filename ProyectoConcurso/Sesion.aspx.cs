using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//--------
using ProyectoConcurso.scripts;
using Logica;
using System.Data;

namespace ProyectoConcurso
{
    public partial class Sesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Credenciales ObjLogin = new Credenciales();
            DataSet Datos = new DataSet();
            Tipousuario ObjTipoUsuarios = new Tipousuario();

            try
            {

                Datos = ObjLogin.ConsultarCredenciales(TextBox1.Text, TextBox2.Text);
                DataTable DatosConsultados = Datos.Tables["DatosConsultados"];

                int NumRegistros = DatosConsultados.Rows.Count;

                if (NumRegistros == 0)
                {
                    MessageBox.alert("La Identificacion y/o Contraseña es Incorrecta porfavor, Intentelo de nuevo ");
                }
                else
                {
                    //Datos = ObjTipoUsuarios.ConsultarTipoUsuario(TextBox1.Text);
                    //DataTable DatosConsultadosTipoUsuario = Datos.Tables["DatosConsultados"];
                    //DataTable DatosIdTipoUsuario = 0;

                    //if (DatosConsultados == 0)
                    //{

                    //}
                    Response.Redirect("PaginaPrincipalLoginU.aspx");
                }
            }
            catch (Exception ex)
            {
                MessageBox.alert("Error!: " + ex.Message + " " + ObjLogin.Mensaje);
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}