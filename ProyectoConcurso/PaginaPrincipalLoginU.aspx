<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaPrincipalLoginU.aspx.cs" Inherits="ProyectoConcurso.PaginaPrincipal" %>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Pagina Principal</title>
    
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
         
                             <img src="Imagenes/sitplogo.png" class="responsive-img center-box" style="border: thick solid #0D47A1; background-color: #263238;">&nbsp;
                <figcaption class="center-align ">Sistema de Informacion para la Gestión de Denuncias Opiniones, Quejas y Sugerencias</figcaption>
            </figure> 
            <div class="NavLateral-Nav">
                <ul class="full-width">
<li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light blue darken-4"><i class="zmdi zmdi-widgets zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i> Quejas</a>
                        <ul class="full-width">
                            <li><a href="UsuarioLog/CrearQueja.aspx" class="waves-effect waves-light">Crear Queja</a></li>
                            <li class="NavLateralDivider"></li>
                            <li><a href="UsuarioLog/ConsultarQueja.aspx" class="waves-effect waves-light">Consultar Quejas</a></li>
 
                           
                        </ul>
                    </li>
                    <li class="NavLateralDivider"></li>
             <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light blue darken-4"><i class="zmdi zmdi-widgets zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i>Denuncias </a>
                        <ul class="full-width">
                            <li><a href="UsuarioLog/CrearDenuncia.aspx" class="waves-effect waves-light">Crear Denuncia</a></li>
                            <li class="NavLateralDivider"></li>
                            <li><a href="UsuarioLog/ConsultarDenuncia.aspx" class="waves-effect waves-light">Consultar Denuncias</a></li>
  
                        </ul>
                    </li>
                    <li class="NavLateralDivider"></li>
                    <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light blue darken-4"><i class="zmdi zmdi-widgets zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i>Opiniones</a>
                        <ul class="full-width">
                            <li><a href="UsuarioLog/CrearOpinion.aspx" class="waves-effect waves-light">Crear Opinion</a></li>
                            <li class="NavLateralDivider"></li>
                            <li><a href="UsuarioLog/ConsultarOpinion.aspx" class="waves-effect waves-light">Consultar Opiniones</a></li>
                             
                        </ul>
                    </li>
                    <li class="NavLateralDivider"></li>
                    <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light blue darken-4"><i class="zmdi zmdi-view-web zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i> Sugerencias</a>
                        <ul class="full-width">
                                  <li><a href="UsuarioLog/CrearSugerencia.aspx" class="waves-effect waves-light">Crear Sugerencia</a></li>
                            <li class="NavLateralDivider"></li>
                            <li><a href="UsuarioLog/ConsultarSugerencia.aspx" class="waves-effect waves-light">Consultar Sugerencias</a></li>
                 
                        </ul>
                    </li>  
                   

                </ul>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <img src="Imagenes/web-tullave.jpg" class="responsive-img"/>
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
                            <figure> <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="assets/img/user.png" Height="50px" Width="50px" OnClick="ImageButton2_Click1"  /></li></figure>
                </li>
                <li style="padding:0 5px;">
                    <asp:Label ID="Label1" runat="server" Text="Brayan721" CssClass="white-text"></asp:Label></li>
           
                <li >
                   <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/Imagenes/baseline_power_settings_new_black_18dp.png" Width="50px" OnClick="ImageButton1_Click" />
                  </li>
                     <li>

                </li>
               <%-- <li><a href="#" class="tooltipped waves-effect waves-light btn-Search" data-position="bottom" data-delay="50" data-tooltip="Search"><i class="zmdi zmdi-search"></i></a></li>--%>
          
                       <a href="PaginaPrincipalLoginU.aspx" class="waves-effect waves-light blue-grey darken-4 btn">Inicio</a>
              
                
                              
               
            </ul>   
        </div>

        <!-- Container -->
        <div class="container">
           <br />
            <div class="row">
                <div class="row">
                <asp:Panel ID="Panel1" runat="server" CssClass="col s12 blue darken-3"  ForeColor="#E1E1E1" style="border: medium groove #004EC1;">

                    <div class="row">
                        <div class="col s12" style="border: medium groove #004EC1;">
                        <h6>Fecha de publicacion: <asp:Label ID="Label2" runat="server" Text="18/09/2019"></asp:Label> </h6>
                        </div>
                        <div class="col s12 center-align" style="border: medium groove #004EC1;">
                            <h3>
                                <asp:Label ID="Label3" runat="server" Text="Se ha mejorado el aseo a los buses"></asp:Label></h3>
                        </div>
                        <div class="col s12 center-align" style="border: medium groove #004EC1;">
                          <asp:Label ID="Label13" runat="server" Text="Gracias a las quejas que los usuarios realizaron en cuanto el aseo de los buses 
                              se aplicaron correctivas para un mejor aseo de los buses"></asp:Label>
                        </div>
                        

                    </div>
                </asp:Panel>
                <div class="col m2 l2">  &nbsp;</div>
                <asp:Panel ID="Panel2" runat="server" CssClass="col s12  blue darken-3"  ForeColor="#E1E1E1" style="border: medium groove #004EC1;">

                    <div class="row">
                        <div class="col s12" style="border: medium groove #004EC1;">
                        <h6>Fecha de publicacion: <asp:Label ID="Label4" runat="server" Text="08/09/2019"></asp:Label> </h6>
                        </div>
                        <div class="col s12 center-align" style="border: medium groove #004EC1;">
                            <h3>
                                <asp:Label ID="Label5" runat="server" Text="Se ha mejorado el tiempo regulado de la salida del sitp"></asp:Label></h3>
                        </div>
                        <div class="col s12 center-align" style="border: medium groove #004EC1;">
                            <asp:Label ID="Label10" runat="server" Text="Gracias a las quejas dadas por el tiempo de las salidas del sitp se estan aplicando correctivas para asegurar que
                                estos salgan en un tiempo estimado de 10 minutos cada bus"></asp:Label>
                           
                        </div>
                        

                    </div>
                </asp:Panel>
                </div>
                  <div class="row">
                <asp:Panel ID="Panel3" runat="server" CssClass="col s12  blue darken-3"  ForeColor="#E1E1E1" style="border: medium groove #004EC1;">

                    <div class="row">
                        <div class="col s12" style="border: medium groove #004EC1;">
                        <h6>Fecha de publicacion: <asp:Label ID="Label6" runat="server" Text="29/08/2019"></asp:Label> </h6>
                        </div>
                        <div class="col s12 center-align" style="border: medium groove #004EC1;">
                            <h3>
                                <asp:Label ID="Label7" runat="server" Text="Se han tenido en cuenta quejas por exceso de personas en los buses del sitp"></asp:Label></h3>
                        </div>
                        <div class="col s12 center-align" style="border: medium groove #004EC1;">
                           <asp:Label ID="Label11" runat="server" Text="Se estan tomando ciertas estrategias para evitar el exceso de personas en los buses del sitp."></asp:Label>
                        </div>
                        

                    </div>
                </asp:Panel>
                <div class="col m2 l2">  &nbsp;</div>
           &nbsp;</div>
                <asp:Panel ID="Panel4" runat="server" CssClass="col s12  blue darken-3"  ForeColor="#E1E1E1" style="border: medium groove #004EC1;">

                    <div class="row">
                        <div class="col s12" style="border: medium groove #004EC1;">
                        <h6>Fecha de publicacion: <asp:Label ID="Label8" runat="server" Text="29/08/2019"></asp:Label> </h6>
                        </div>
                        <div class="col s12 center-align" style="border: medium groove #004EC1;">
                            <h3>
                                <asp:Label ID="Label9" runat="server" Text="Se han tenido en cuenta quejas por la actitud del funcionario del sitp"></asp:Label></h3>
                        </div>
                        <div class="col s12 center-align" style="border: medium groove #004EC1;">
                            <asp:Label ID="Label12" runat="server" Text="Se estan estan tomando ciertas correctivas con los funcionarios del sitp que
                                irrespetan a sus pasajeros. Se estan aplicando penalizaciones para estos conductores"></asp:Label>
                        </div>
                        

                    </div>
                </asp:Panel>
                </div>
            </div>
        </div>
   
       <br />
              <br />   <br />   
         <!-- Footer -->
     <footer class="footer-MaterialDark">
            <div class="container">

            <div class="footer-copyright">
                <div class="container center-align">
                    © 2019 Brayan Martinez - Kenner Ruiz - Camilo Meza
                >
        </footer>
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