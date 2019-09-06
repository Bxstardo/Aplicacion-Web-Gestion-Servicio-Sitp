using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoConcurso.Usuario
{
    public partial class CrearQueja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../PaginaPrincipal.aspx");
        }

        
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (DropDownList2.SelectedIndex)
            {
                case 1:
                    Label1.Text = "Funcionario";
                    break;

                case 2:
                    Label1.Text = "Bus";
                    break;

            }
        }

    }
}