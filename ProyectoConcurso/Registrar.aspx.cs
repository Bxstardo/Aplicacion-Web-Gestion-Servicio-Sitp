using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//----
using System.Data;
using Logica;
using ProyectoConcurso.scripts;

namespace ProyectoConcurso
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Usuario ObjUsuario = new Usuario();
            Credenciales ObjLogin = new Credenciales();
            DataSet DatosUsuarioCreados = new DataSet();
            //Solo Usuarios normales
            try
            {
                string localidad;
                localidad = DropDownList2.Text;
                //<Atributos de la tabla usuario
                ObjUsuario.id_usuario = long.Parse(TextBox9.Text);
                ObjUsuario.nombres = TextBox1.Text;
                ObjUsuario.apellidos = TextBox2.Text;
                ObjUsuario.direccion = TextBox3.Text;
                ObjUsuario.telefono = long.Parse(TextBox4.Text);
                ObjUsuario.email = TextBox8.Text;
                ObjUsuario.barrio = TextBox5.Text;
                ObjUsuario.localidad = DropDownList1.Text;
                ObjUsuario.id_ciudad = 0;
                ObjUsuario.id_tipo_usuario = 0;

                bool RespuestaSQLUsuario = ObjUsuario.InsertarUsuario();

                if (RespuestaSQLUsuario == true)
                {
                    DatosUsuarioCreados = ObjUsuario.ConsultarUsuIden(long.Parse(TextBox9.Text));
                    DataTable DatosConsultados = DatosUsuarioCreados.Tables["DatosConsultados"];

                    int NumRegistros = DatosConsultados.Rows.Count;
                    if (NumRegistros == 0)
                    {
                        MessageBox.alert("Los atributos de credenciales no han sido consultados correctamente");
                    }
                    else
                    {
                        ObjLogin.id_usuario = long.Parse(TextBox9.Text);
                        ObjLogin.usuario = TextBox6.Text;
                        ObjLogin.contraseña = TextBox7.Text;

                        bool RespuestaSQLCredenciales = ObjLogin.InsertarCredenciales();

                        if (RespuestaSQLUsuario == true && RespuestaSQLCredenciales == true)
                        {
                            MessageBox.alert("Usuario registrado correctamente");
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                            TextBox8.Text = "";
                        }
                        else
                        {
                            MessageBox.alert("Las credenciales no han sido creadas correctamente");
                        }
                    }
                }
                else
                {
                    MessageBox.alert("Los atributos del usuario no fueron creados");
                }


                //if (RespuestaSQLCredenciales == true)
                //{
                //    string localidad;
                //    localidad = DropDownList2.Text;
                //    //<Atributos de la tabla usuario
                //    ObjUsuario.id_usuario = long.Parse(TextBox9.Text);
                //    ObjUsuario.nombres = TextBox1.Text;
                //    ObjUsuario.apellidos = TextBox2.Text;
                //    ObjUsuario.direccion = TextBox3.Text;
                //    ObjUsuario.telefono = long.Parse(TextBox4.Text);
                //    ObjUsuario.email = TextBox8.Text;
                //    ObjUsuario.barrio = TextBox5.Text;
                //    ObjUsuario.localidad = DropDownList1.Text;
                //    ObjUsuario.id_ciudad = 0;
                //    ObjUsuario.id_tipo_usuario = 0;

                //    bool RespuestaSQLUsuario = ObjUsuario.InsertarUsuario();

                //    if (RespuestaSQLUsuario == true)
                //    {
                //        MessageBox.alert("Usuario registrado correctamente");
                //        TextBox1.Text = "";
                //        TextBox2.Text = "";
                //        TextBox3.Text = "";
                //        TextBox4.Text = "";
                //        TextBox5.Text = "";
                //        TextBox6.Text = "";
                //        TextBox7.Text = "";
                //        TextBox8.Text = "";
                //    }
                //    else
                //    {
                //        MessageBox.alert("2 No se a podido crear el Usuario correctamente ");
                //    }
            
                //else
                //{
                //    MessageBox.alert("No se a podido crear el Usuario correctamente ");
                //}

                //if (RespuestaSQLUsu == true && RespuestaSQLCrede == true)
                //{
                //    MessageBox.alert("Usuario registrado correctamente");
                //    TextBox1.Text = "";
                //    TextBox2.Text = "";
                //    TextBox3.Text = "";
                //    TextBox4.Text = "";
                //    TextBox5.Text = "";
                //    TextBox6.Text = "";
                //    TextBox7.Text = "";
                //    TextBox8.Text = "";
                //}
            }
            catch (Exception Ex)
            {
                MessageBox.alert("El usuario no ha sido registrado correctamente por el siguiente error "+Ex.Message+" "+ObjUsuario.Mensaje);
            }
        }
    }
}