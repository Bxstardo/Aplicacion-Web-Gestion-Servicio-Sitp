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
                    Datos = ObjLogin.ConsultarCredenciales1(TextBox1.Text, "Identifi_Usu");
                    DatosConsultados = Datos.Tables["DatosConsultados"];

                    long IdentificacionUsuario = long.Parse(DatosConsultados.Rows[0]["id_usuario"].ToString());

                    Page.Session["Identificacion_Usuario"] = IdentificacionUsuario;

                    Tipousuario ObjTipUsu = new Tipousuario();
                    Datos = ObjTipUsu.ConsultarTipoUsuario(TextBox1.Text);

                    DatosConsultados = Datos.Tables["DatosConsultados"];
                    string IdTipUsu = DatosConsultados.Rows[0]["id_tipo_usuario"].ToString();

                    if (IdTipUsu == "1")
                    {
                        Response.Redirect("PaginaPrincipalLoginU.aspx");
                    }
                    else if (IdTipUsu == "2")
                    {
                        Response.Redirect("PaginaPrincipalLoginA.aspx");
                    }
                    else
                    {
                        MessageBox.alert("Error Busqueda de login incorrecta");
                    }
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