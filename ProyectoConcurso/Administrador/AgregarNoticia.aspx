<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarNoticia.aspx.cs" Inherits="ProyectoConcurso.Administrador.AgregarNoticia" %>


<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Pagina Principal</title>
    
     <!-- Normalize CSS -->

    <link rel="stylesheet" href="../css/responsive mapa.css" />

	<link rel="stylesheet" href="../css/normalize.css">
    
     <!-- Materialize CSS -->
	<link rel="stylesheet" href="../css/materialize.min.css">
    
     <!-- Material Design Iconic Font CSS -->
	<link rel="stylesheet" href="../css/material-design-iconic-font.min.css">
    
    <!-- Malihu jQuery custom content scroller CSS -->
	<link rel="stylesheet" href="../css/jquery.mCustomScrollbar.css">
    
    <!-- Sweet Alert CSS -->
    <link rel="stylesheet" href="../css/sweetalert.css">
    
    <!-- MaterialDark CSS -->
	<link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <form id="form1" runat="server">
    <!-- Nav Lateral -->
      <section class="NavLateral full-width">
        <div class="NavLateral-FontMenu full-width ShowHideMenu"></div>
        <div class="NavLateral-content full-width">
            <header class="NavLateral-title full-width center-align blue-grey darken-4">
                &nbsp;
                S.I.G.D.O.Q.S <i class="zmdi zmdi-close NavLateral-title-btn ShowHideMenu "></i>
            </header>
             <figure class="full-width NavLateral-logo blue-grey darken-4"   >
         
                               <img src="../Imagenes/sitplogo.png" class="responsive-img center-box" style="border: thick solid #0D47A1; background-color: #263238;">&nbsp;
                <figcaption class="center-align ">Sistema de Informacion para la Gestión de Denuncias Opiniones, Quejas y Sugerencias</figcaption>
            </figure> 
            <div class="NavLateral-Nav">
                <ul class="full-width">
<li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light blue darken-4"><i class="zmdi zmdi-widgets zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i> Quejas</a>
                        <ul class="full-width">
                            <li><a href="ConsultarQuejas.aspx" class="waves-effect waves-light">Consultar Quejas Usuarios</a></li>
                       
                        </ul>
                    </li>
                    <li class="NavLateralDivider"></li>
             <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light blue darken-4"><i class="zmdi zmdi-widgets zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i>Denuncias </a>
                        <ul class="full-width">

                            <li><a href="ConsultarDenuncias.aspx" class="waves-effect waves-light">Consultar Denuncias Usuarios</a></li>
                 
                        </ul>
                    </li>
                    <li class="NavLateralDivider"></li>
                    <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light blue darken-4"><i class="zmdi zmdi-widgets zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i>Opiniones</a>
                        <ul class="full-width">
                            <li><a href="ConsultarOpiniones.aspx" class="waves-effect waves-light">Consultar Opiniones Usuarios</a></li>
                            <li class="NavLateralDivider"></li>
                            <li><a href="ConsultarEstadisticasOpiniones.aspx" class="waves-effect waves-light">Consultar Estadisticas Opiniones</a></li>
                             
                        </ul>
                    </li>
                    <li class="NavLateralDivider"></li>
                    <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light blue darken-4"><i class="zmdi zmdi-view-web zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i> Sugerencias</a>
                        <ul class="full-width">
                                  <li><a href="ConsultarSugerencias.aspx" class="waves-effect waves-light">Consultar Sugerencia Usuarios</a></li>

                 
                        </ul>
                    </li>   
                       <li class="NavLateralDivider"></li>
                    <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light blue darken-4"><i class="zmdi zmdi-view-web zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i> Noticias</a>
                        <ul class="full-width">
                                  <li><a href="AgregarNoticia.aspx" class="waves-effect waves-light">Agregar noticia</a></li>

                 
                        </ul>
                    </li>   

                </ul>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <img src="../Imagenes/web-tullave.jpg" class="responsive-img"/>
            </div>  
        </div>  
    </section>
    <!-- Page content -->
    <section class="ContentPage full-width">
        <!-- Nav Info -->

          <div class="ContentPage-Nav full-width blue darken-3">
            <ul class="full-width">
                <li class="btn-MobileMenu ShowHideMenu"><a href="#" class="tooltipped waves-effect waves-light" data-position="bottom" data-delay="50" data-tooltip="Menu"><i class="zmdi zmdi-more-vert"></i></a></li>
                <li >
                            <figure> <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../assets/img/user.png" Height="50px" Width="50px"/></li></figure>
                </li>
                <li style="padding:0 5px;">
                    <asp:Label ID="Label2" runat="server" Text="User Name" CssClass="white-text"></asp:Label></li>
           
                <li >
                   <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/Imagenes/baseline_power_settings_new_black_18dp.png" Width="50px" OnClick="ImageButton1_Click" />
                  </li>
                     <li>

                </li>
               <%-- <li><a href="#" class="tooltipped waves-effect waves-light btn-Search" data-position="bottom" data-delay="50" data-tooltip="Search"><i class="zmdi zmdi-search"></i></a></li>--%>
          
                       <a href="../PaginaPrincipalLoginA.aspx" class="waves-effect waves-light blue-grey darken-4 btn">Inicio</a>
              
                
                              
               
            </ul>   
        </div>
               <%--  Contenido  --%>
      
         <div class="container">
             <div class="row">
                 <h1 class="center-align col s12">Noticias</h1>
                 <p class="center-align col s12">&nbsp;</p>
                 <h6 class="center-align col s12 ">Ingrese el titulo de la noticia</h6>           
             </div>
             <div class="row center-align">
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             </div>
             <div class="row center center-align">
                 <h6>Ingrese la descripcion de la noticia</h6>
             </div>
             <div class="row">
                   <asp:TextBox ID="TextBox2" runat="server" CssClass="materialize-textarea col s12" textmode="multiline"></asp:TextBox>   
             </div>

             <div class="row center-align">
                          <asp:Button ID="Button2" runat="server" Text="Agregar" CssClass="waves-effect waves-light blue-grey darken-4 btn" OnClick="Button2_Click" />
                      
             </div>


         </div>
            <br />    <br />    <br />    <br />    <br />    <br />    <br />    <br />    <br />    <br />    <br />
            <br />    <br />    <br />    <br />    <br />    <br />    <br />    <br />    <br />    <br />    <br />
       <!-- Footer -->
     <footer class="footer-MaterialDark">
            <div class="container">

            <div class="footer-copyright">
                <div class="container center-align">
                    © 2019 Brayan Martinez - Kenner Ruiz - Camilo Meza
                </div>
            </div>
        </footer>
    </section>
    &nbsp;<!-- jQuery --><script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script><script>window.jQuery || document.write('<script src="../js/jquery-2.2.0.min.js"><\/script>')</script><!-- Materialize JS --><script src="../js/materialize.min.js"></script><!-- Malihu jQuery custom content scroller JS --><script src="../js/jquery.mCustomScrollbar.concat.min.js"></script><!-- MaterialDark JS --><script src="../js/main.js"></script></form>
</body>
</html>
        
        