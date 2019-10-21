﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearOpinion.aspx.cs" Inherits="ProyectoConcurso.SinLogin.CrearOpinion" %>


<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Pagina Principal</title>
    
     <!-- Normalize CSS -->
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
                  <img src="../Imagenes/sitplogo.png" class="responsive-img center-box" style="border: thick solid #0D47A1; background-color: #263238;">
               
                             &nbsp;
                <figcaption class="center-align ">Sistema de Informacion para la Gestion de Denuncias Opiniones, Quejas y Sugerencias</figcaption>
            </figure> 
            <div class="NavLateral-Nav">
                <ul class="full-width">
                      <li>
                        <a href="../PaginaPrincipal.aspx" class="waves-effect waves-light blue darken-4"><i class="zmdi zmdi-desktop-mac zmdi-hc-fw"></i> Inicio</a>
                    </li>
                    <li class="NavLateralDivider"></li>
<li >
                        <a href="#" class="NavLateral-DropDown  waves-effect blue darken-4"   ><i class="zmdi zmdi-widgets zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i> Quejas</a>
                        <ul class="full-width" >
                            <li><a href="CrearQueja.aspx" class="waves-effect waves-light     " >Crear Queja</a></li>

                                
                        </ul>
                    </li>
                    <li class="NavLateralDivider" ></li>
          
                    <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light  blue darken-4"  ><i class="zmdi zmdi-widgets zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i>Opiniones</a>
                        <ul class="full-width">
                            <li><a href="CrearOpinion.aspx" class="waves-effect  waves-light">Crear Opinion</a></li>

                               
                        </ul>
                    </li>
                    <li class="NavLateralDivider"></li>
                    <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light blue darken-4"  ><i class="zmdi zmdi-view-web zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i> Sugerencias</a>
                        <ul class="full-width">
                                  <li><a href="CrearSugerencia.aspx" class="waves-effect waves-light">Crear Sugerencia</a></li>
                 
                 
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

        <div class="ContentPage-Nav full-width  blue darken-3" >
            <ul class="full-width">
                <li class="btn-MobileMenu ShowHideMenu"><a href="#" class="tooltipped waves-effect waves-light" data-position="bottom" data-delay="50" data-tooltip="Menu"><i class="zmdi zmdi-more-vert"></i></a></li>
                <li >
                            <figure> <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../assets/img/user.png" Height="50px" Width="50px" OnClick="ImageButton2_Click"/></li></figure>
            
      
             
           
                    <a href="../Registrar.aspx" class="waves-effect waves-light blue-grey darken-4 btn " >Regístrate Aquí!</a> 
                                
                <li >
                          <asp:Image ID="Image2" runat="server"  Height="50px" Width="50px" ImageUrl="~/Imagenes/baseline_trending_flat_black_18dp.png" /> 
                  </li>
                    
              
                             <li style="padding:0 5px;" class="white-text" >Inicia Sesion</li>
               </ul>
                             </div>   
               <%--  Contenido  --%>

        <div class="container">
            <div class="row">
                <h1 class="center-align">Opinion</h1>
                <div class="row center center-align">
                    <asp:Panel ID="Panel1" runat="server">
                    <div class="col s12">
                        <asp:Label ID="Label1" runat="server" Text="¿Como considera que es el aseo de los buses del sitp?" style="font-size: x-large"></asp:Label>
                    </div>
                    <div class="col s12">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Excelente</asp:ListItem>
                            <asp:ListItem>Bueno</asp:ListItem>
                            <asp:ListItem>Regular</asp:ListItem>
                            <asp:ListItem>Malo</asp:ListItem>
                        </asp:RadioButtonList>
                 <%--         <asp:TextBox ID="TextBox1" runat="server" CssClass="materialize-textarea" textmode="multiline"></asp:TextBox>--%>
                    </div>
                        </asp:Panel>
                     <asp:Panel ID="Panel2" runat="server">
                     <div class="col s12">
                        <asp:Label ID="Label2" runat="server" Text="¿Como considera la actitud del conductor?" style="font-size: x-large"></asp:Label>
                    </div>
                        
                    <div class="col s12">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                  <asp:ListItem>Excelente</asp:ListItem>
                            <asp:ListItem>Bueno</asp:ListItem>
                            <asp:ListItem>Regular</asp:ListItem>
                            <asp:ListItem>Malo</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                            </asp:Panel>
                       <asp:Panel ID="Panel3" runat="server">
                     <div class="col s12">
                        <asp:Label ID="Label3" runat="server" Text="¿Como considera las horas de llegada del sitp?" style="font-size: x-large"></asp:Label>
                    </div>
                    <div class="col s12">
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                         <asp:ListItem>Excelente</asp:ListItem>
                            <asp:ListItem>Bueno</asp:ListItem>
                            <asp:ListItem>Regular</asp:ListItem>
                            <asp:ListItem>Malo</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>                           
                            </asp:Panel>
                        <asp:Panel ID="Panel4" runat="server">
                     <div class="col s12">
                        <asp:Label ID="Label4" runat="server" Text="¿Como considera el servicio de transporte sitp?, Bueno, malo, ¿Porque? " style="font-size: x-large"></asp:Label>
                    </div>
                    <div class="col s12">
                         <asp:TextBox ID="TextBox4" runat="server" CssClass="materialize-textarea" textmode="multiline"></asp:TextBox>
           
                    </div>
                       <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                            <asp:ListItem>Opcion 1</asp:ListItem>
                            <asp:ListItem>Opcion 2</asp:ListItem>
                            <asp:ListItem>Opcion 3</asp:ListItem>
                            <asp:ListItem>Opcion 4</asp:ListItem>
                        </asp:RadioButtonList>--%>
                    </div>
                             </asp:Panel>
                      <asp:Panel ID="Panel5" runat="server">
                     <div class="col s12">
                        <asp:Label ID="Label5" runat="server" Text="Pregunta 5" style="font-size: x-large"></asp:Label>
                    </div>
                    <div class="col s12">
                        <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                            <asp:ListItem>Opcion 1</asp:ListItem>
                            <asp:ListItem>Opcion 2</asp:ListItem>
                            <asp:ListItem>Opcion 3</asp:ListItem>
                            <asp:ListItem>Opcion 4</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                               </asp:Panel>
                         <asp:Panel ID="Panel6" runat="server">
                     <div class="col s12">
                        <asp:Label ID="Label6" runat="server" Text="Pregunta 6" style="font-size: x-large"></asp:Label>
                    </div>
                    <div class="col s12">
                        <asp:RadioButtonList ID="RadioButtonList6" runat="server">
                            <asp:ListItem>Opcion 1</asp:ListItem>
                            <asp:ListItem>Opcion 2</asp:ListItem>
                            <asp:ListItem>Opcion 3</asp:ListItem>
                            <asp:ListItem>Opcion 4</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                                        </asp:Panel>
                        <asp:Panel ID="Panel7" runat="server">
                     <div class="col s12">
                        <asp:Label ID="Label7" runat="server" Text="Pregunta 7" style="font-size: x-large"></asp:Label>
                    </div>
                    <div class="col s12">
                        <asp:RadioButtonList ID="RadioButtonList7" runat="server">
                            <asp:ListItem>Opcion 1</asp:ListItem>
                            <asp:ListItem>Opcion 2</asp:ListItem>
                            <asp:ListItem>Opcion 3</asp:ListItem>
                            <asp:ListItem>Opcion 4</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                                    </asp:Panel>
                         <asp:Panel ID="Panel8" runat="server">
                     <div class="col s12">
                        <asp:Label ID="Label8" runat="server" Text="Pregunta 8" style="font-size: x-large"></asp:Label>
                    </div>
                    <div class="col s12">
                        <asp:RadioButtonList ID="RadioButtonList8" runat="server">
                            <asp:ListItem>Opcion 1</asp:ListItem>
                            <asp:ListItem>Opcion 2</asp:ListItem>
                            <asp:ListItem>Opcion 3</asp:ListItem>
                            <asp:ListItem>Opcion 4</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                                 </asp:Panel>
                     <asp:Panel ID="Panel9" runat="server">
                     <div class="col s12">
                        <asp:Label ID="Label9" runat="server" Text="Pregunta 9" style="font-size: x-large"></asp:Label>
                    </div>
                    <div class="col s12">
                        <asp:RadioButtonList ID="RadioButtonList9" runat="server">
                            <asp:ListItem>Opcion 1</asp:ListItem>
                            <asp:ListItem>Opcion 2</asp:ListItem>
                            <asp:ListItem>Opcion 3</asp:ListItem>
                            <asp:ListItem>Opcion 4</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                                </asp:Panel>
                     <asp:Panel ID="Panel10" runat="server">
                     <div class="col s12">
                        <asp:Label ID="Label10" runat="server" Text="Pregunta 10" style="font-size: x-large"></asp:Label>
                    </div>
                    <div class="col s12">
                        <asp:RadioButtonList ID="RadioButtonList10" runat="server">
                            <asp:ListItem>Opcion 1</asp:ListItem>
                            <asp:ListItem>Opcion 2</asp:ListItem>
                            <asp:ListItem>Opcion 3</asp:ListItem>
                            <asp:ListItem>Opcion 4</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                             </asp:Panel>
                </div>
            </div>
        </div>


          
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
         