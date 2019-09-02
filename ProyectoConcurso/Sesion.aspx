<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sesion.aspx.cs" Inherits="ProyectoConcurso.Sesion" %>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Inicio de Sesion</title>
	
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

</head>

<body background="Imagenes/fondo2.jpg" style="background-repeat: no-repeat; background-position: center center;">
    <p>
&nbsp;</p>
    <style type="text/css">
        .confiltro
        {
            -webkit-filter: blur(3px)
        }
    </style>
        <form id="form1" runat="server" class="center-align">
    <div class="container-login center-align">
        <div style="margin:15px 0;" class="col s12">
            
           <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/sitp.png" Width="100px" CssClass="responsive-img" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/transmi.png" Width="100px"  CssClass="responsive-img" />
            <p class="center-align">Inicia sesión con tu cuenta</p>   
        </div>
      
            <div class="input-field col s12">
            &nbsp;<strong>Usuario </strong>&nbsp;<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </div>
            <div class="input-field col s12">
             &nbsp;<strong>Contraseña</strong>&nbsp;

          <asp:TextBox ID="TextBox2" runat="server" type="password"></asp:TextBox>
              
            </div>
<asp:Button ID="Button1" runat="server" Text="Ingresar" CssClass="waves-effect waves-teal btn-flat" OnClick="Button1_Click"/> 
     
        <div class="divider" style="margin: 20px 0;"></div>
      <%--  <a href="home.html">¿Se te olvido la contraseña?</a>--%>
    </div>
    
    <!-- Sweet Alert JS -->
    <script src="js/sweetalert.min.js"></script>
    
    <!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-2.2.0.min.js"><\/script>')</script>
    
    <!-- Materialize JS -->
	<script src="js/materialize.min.js"></script>
    
    <!-- Malihu jQuery custom content scroller JS -->
	<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    
    <!-- MaterialDark JS -->
	<script src="js/main.js"></script>
    </form>
</body>
</html>