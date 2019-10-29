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
            if (!IsPostBack)
            {
                LlenarDDL_Ciudades();
                LlenarDDL_Localidades();
            }

        }

        private void LlenarDDL_Ciudades()
        {
            Ciudad ObjCiudad = new Ciudad();
            DataSet DatosCiudad = new DataSet();

            try
            {
                DatosCiudad = ObjCiudad.ConsultarCiudades();
                DataTable DatosConsultados = DatosCiudad.Tables["DatosConsultados"];

                DropDownList1.DataSource = DatosConsultados;
                DropDownList1.DataTextField = "nombre_ciudad";
                DropDownList1.DataValueField = "id_ciudad";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("Seleccione una Ciudad", "-1"));
            }
            catch (Exception Ex)
            {
                MessageBox.alert(Ex.Message + " " + ObjCiudad.Mensaje);
            }
        }

        private void LlenarDDL_Localidades()
        {
            DropDownList2.Items.Insert(0, new ListItem("Seleccione una Ciudad", "-1"));
            DropDownList2.Items.Insert(1, new ListItem("[1]", "1"));
            DropDownList2.Items.Insert(2, new ListItem("[2]", "2"));
            DropDownList2.Items.Insert(3, new ListItem("[3]", "3"));
            DropDownList2.Items.Insert(4, new ListItem("[4]", "4"));
            DropDownList2.Items.Insert(5, new ListItem("[5]", "5"));
            DropDownList2.Items.Insert(6, new ListItem("[6]", "6"));
            DropDownList2.Items.Insert(7, new ListItem("[7]", "7"));
            DropDownList2.Items.Insert(8, new ListItem("[8]", "8"));
            DropDownList2.Items.Insert(9, new ListItem("[9]", "9"));
            DropDownList2.Items.Insert(10, new ListItem("[10]", "10"));
            DropDownList2.Items.Insert(11, new ListItem("[11]", "11"));
            DropDownList2.Items.Insert(12, new ListItem("[12]", "12"));
            DropDownList2.Items.Insert(13, new ListItem("[13]", "13"));
            DropDownList2.Items.Insert(14, new ListItem("[14]", "14"));
            DropDownList2.Items.Insert(15, new ListItem("[15]", "15"));
            DropDownList2.Items.Insert(16, new ListItem("[16]", "16"));
            DropDownList2.Items.Insert(17, new ListItem("[17]", "17"));
            DropDownList2.Items.Insert(18, new ListItem("[18]", "18"));
            DropDownList2.Items.Insert(19, new ListItem("[19]", "19"));
            DropDownList2.Items.Insert(20, new ListItem("[20]", "20"));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Credenciales ObjCreden = new Credenciales();
            DataSet Datos = new DataSet();

            try
            {
                Datos = ObjCreden.ConsultarCredenciales(TextBox6.Text, TextBox7.Text);
                DataTable DatosConsultados = Datos.Tables["DatosConsultados"];

                int NumCredenIgual = DatosConsultados.Rows.Count;

                if (NumCredenIgual == 0)
                {
                    Usuarios ObjUsu = new Usuarios();

                    try
                    {
                        Datos = ObjUsu.ConsultarUsuIden(TextBox9.Text, "Login");
                        DatosConsultados = Datos.Tables["DatosConsultados"];

                        int NumUsuIgual = DatosConsultados.Rows.Count;

                        if (NumUsuIgual == 0)
                        {
                            ObjUsu.id_usuario = long.Parse(TextBox9.Text);
                            ObjUsu.nombres = TextBox1.Text;
                            ObjUsu.apellidos = TextBox2.Text;
                            ObjUsu.direccion = TextBox3.Text;
                            ObjUsu.telefono = long.Parse(TextBox4.Text);
                            ObjUsu.email = TextBox8.Text;
                            ObjUsu.barrio = TextBox5.Text;
                            ObjUsu.localidad = DropDownList2.SelectedItem.ToString();
                            ObjUsu.id_ciudad = long.Parse(DropDownList1.SelectedIndex.ToString());
                            ObjUsu.id_tipo_usuario = 1;

                            bool RespuestaSQLUsu = ObjUsu.InsertarUsuario();
                            if (RespuestaSQLUsu == true)
                            {
                                ObjCreden.usuario = TextBox6.Text;
                                ObjCreden.contraseña = TextBox7.Text;
                                ObjCreden.id_usuario = long.Parse(TextBox9.Text);

                                bool RespuestaSQLCreden = ObjCreden.InsertarCredenciales();
                                if (RespuestaSQLCreden == true)
                                {
                                    MessageBox.alert("Se han registrado correctamente los datos");
                                }
                            }
                        }
                        else
                        {
                            MessageBox.alert("El usuario ya existe");
                        }
                    }
                    catch (Exception Ex)
                    {
                        MessageBox.alert(Ex.Message + " 2 " + ObjUsu.Mensaje);
                    }
                }
                else
                {
                    MessageBox.alert("El usuario ya existe");
                }
            }
            catch (Exception Ex)
            {
                MessageBox.alert(Ex.Message + " 1 " + ObjCreden.Mensaje);
            }
        }
    }
}