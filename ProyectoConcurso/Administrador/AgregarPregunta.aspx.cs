using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoConcurso.Administrador
{
    public partial class AgregarPregunta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../PaginaPrincipalLoginA.aspx");
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox2.Text = DropDownList4.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DropDownList2.Items.Add(TextBox2.Text);
            
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}