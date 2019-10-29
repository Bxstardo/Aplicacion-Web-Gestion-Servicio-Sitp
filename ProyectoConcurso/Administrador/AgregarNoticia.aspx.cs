using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using Logica;
using ProyectoConcurso.scripts;

namespace ProyectoConcurso.Administrador
{
    public partial class AgregarNoticia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void ValidarUsuario()
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../PaginaPrincipal.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Noticia ObjNoticia = new Noticia();

            try
            {
                long IdentificacionUsuario = -1;
                if (Page.Session["Identificacion_Usuario"] != null)
                {
                    IdentificacionUsuario = (long)Page.Session["Identificacion_Usuario"];
                    ObjNoticia.titulo_noticia = TextBox1.Text;
                    ObjNoticia.descripcion_noticia = TextBox2.Text;
                    ObjNoticia.id_usuario = IdentificacionUsuario;

                    bool RespuestaSQL = ObjNoticia.InsertarNoticia();
                    if (RespuestaSQL == true)
                    {
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        MessageBox.alert("Se ha generado correctamente el usuario");
                    }
                    else
                    {
                        MessageBox.alert("No se pudo generar correctamente la noticia");
                    }
                }
                else
                {
                    Response.Redirect("../Sesion.aspx");
                }
            }
            catch (Exception Ex)
            {
                MessageBox.alert(Ex.Message + " " + ObjNoticia.Mensaje);
            }
        }
    }
}