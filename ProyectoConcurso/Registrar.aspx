<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="ProyectoConcurso.Registrar" %>

<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Registro</title>
    
     <!-- Normalize CSS -->
	<link rel="stylesheet" href="css/normalize.css">
    
     <!-- Materialize CSS -->
	<link rel="stylesheet" href="css/materialize.min.css">
    
     <!-- Material Design Iconic Font CSS -->
	<link rel="stylesheet" href="css/material-design-iconic-font.min.css">
    
    <!-- Malihu jQuery custom content scroller CSS -->
	<link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    
    <!-- Sweet Alert CSS -->
    <link rel="stylesheet" href="css/sweetalert.css">
    
    <!-- MaterialDark CSS -->
	<link rel="stylesheet" href="css/style.css">
    <style type="text/css">
        .auto-style1 {
            width: 200px;
            height: 100px;
        }
    </style>
</head>
<body class="indigo lighten-5">
	<nav class=" blue darken-4 center-align"> 
       
                <img class="auto-style1 responsive-img" src="Imagenes/stip2.png" /></nav>

    
	   <br/>
    
	<div class="container white" style=" padding: 20px"> <!-- CONTAINER -->
		<div class="row"> <!-- ROW -->		
         		
		    <form id="form1" runat="server" >

                <h4 class="center-align">Registro</h4>
                	<div class="input-field col l6 col m6">
                        Usuario
			 <asp:TextBox ID="TextBox6"  runat="server" placeholder="Ejemplo: Carlos4668"></asp:TextBox>
		
				
				</div>
				<div class="input-field col l6 col m6">
                    Contraseña:
				<asp:TextBox ID="TextBox7" runat="server"  placeholder="Contraseña" type="password" CssClass="validate"></asp:TextBox>
				</div>
                	<div class="clearfix"></div>
				<div class="input-field col l6 col m6">
              Nombres:
			 <asp:TextBox ID="TextBox1" type="text"  runat="server" placeholder="Nombres" CssClass="validate"></asp:TextBox>
						
				</div>
				<div class="input-field col l6 col m6">
                    Apellidos:
				<asp:TextBox ID="TextBox2" runat="server"  placeholder="Apellidos" CssClass="validate"></asp:TextBox>
				</div>

				<div class="clearfix"></div>
				<div class="input-field col l6 col m6">
				Direccion:
					<asp:TextBox ID="TextBox3" runat="server" placeholder="Cll 25..." CssClass="validate"></asp:TextBox>
				</div>
				<div class="input-field col l6 m6">
				Telefono:
				<asp:TextBox ID="TextBox4" runat="server" placeholder ="000-000-0000" CssClass="validate" type="number"></asp:TextBox>
				</div>
				
				<div class="clearfix"></div>
                	<div class="input-field col l6 col-m6">
				        Ciudad:
                   
        <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="true" runat="server" class="browser-default">
                        </asp:DropDownList>

                 

            
        		</div>
				<div class="input-field col l6 m6">
				    Localidad:

                       <asp:DropDownList ID="DropDownList2" AppendDataBoundItems="true" runat="server" class="browser-default">
                        </asp:DropDownList>
				</div>


                	<div class="clearfix"></div>
                <div class="input-field col l6 col m6">
				    Barrio:
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Barrio" CssClass="validate"></asp:TextBox>
				</div>
				

                				<div class="clearfix"></div>
				<div class="input-field col l6 m6">
					Correo:<asp:TextBox ID="TextBox8" runat="server" placeholder="Ejemplo@gmail.com" CssClass="validate" type="email" ></asp:TextBox>
				&nbsp;</div>
                <div class="clearfix"></div>
                <div class="input-field col l6 m6">
					Identificacion:<asp:TextBox ID="TextBox9" type="number" runat="server" placeholder="111111111111" CssClass="validate"></asp:TextBox>
				&nbsp;</div>
		
				<div class="clearfix"></div>
<asp:Button ID="Button1" runat="server" Text="Registrarse" CssClass="btn waves-effect blue darken-4" OnClick="Button1_Click"/>
				
  			</form>
		</div> <!-- ROW -->
	</div>


 
</body>
</html>