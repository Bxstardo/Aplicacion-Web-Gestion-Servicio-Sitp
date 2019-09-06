<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearDenuncia.aspx.cs" Inherits="ProyectoConcurso.Usuario.CrearDenuncia" %>


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
                            <li><a href="CrearQueja.aspx" class="waves-effect waves-light">Crear Queja</a></li>
                            <li class="NavLateralDivider"></li>
                            <li><a href="ConsultarQueja.aspx" class="waves-effect waves-light">Consultar Quejas</a></li>
 
                           
                        </ul>
                    </li>
                    <li class="NavLateralDivider"></li>
             <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light blue darken-4"><i class="zmdi zmdi-widgets zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i>Denuncias </a>
                        <ul class="full-width">
                            <li><a href="CrearDenuncia.aspx" class="waves-effect waves-light">Crear Denuncia</a></li>
                            <li class="NavLateralDivider"></li>
                            <li><a href="ConsultarDenuncia.aspx" class="waves-effect waves-light">Consultar Denuncias</a></li>
  
                        </ul>
                    </li>
                    <li class="NavLateralDivider"></li>
                    <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light blue darken-4"><i class="zmdi zmdi-widgets zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i>Opiniones</a>
                        <ul class="full-width">
                            <li><a href="CrearOpinion.aspx" class="waves-effect waves-light">Crear Opinion</a></li>
                            <li class="NavLateralDivider"></li>
                            <li><a href="ConsultarOpinion.aspx" class="waves-effect waves-light">Consultar Opiniones</a></li>
                             
                        </ul>
                    </li>
                    <li class="NavLateralDivider"></li>
                    <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light blue darken-4"><i class="zmdi zmdi-view-web zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i> Sugerencias</a>
                        <ul class="full-width">
                                  <li><a href="CrearSugerencia.aspx" class="waves-effect waves-light">Crear Sugerencia</a></li>
                            <li class="NavLateralDivider"></li>
                            <li><a href="ConsultarSugerencia.aspx" class="waves-effect waves-light">Consultar Sugerencias</a></li>
                 
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
          
                       <a href="../PaginaPrincipalLoginU.aspx" class="waves-effect waves-light blue-grey darken-4 btn">Inicio</a>
              
                
                              
               
            </ul>   
        </div>
               <%--  Contenido  --%>
      
         <div class="container">
            <div class="row">
                <h1 class="center-align">Denuncia</h1>
                <div class="row">
                   
                    <div class="input-field col s12">
                
                            Tu denuncia es contra un:
                           <asp:DropDownList ID="DropDownList2" runat="server" class="browser-default" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem>Seleccione</asp:ListItem>
                               <asp:ListItem>Funcionario</asp:ListItem>
                               <asp:ListItem>Bus</asp:ListItem>
                        </asp:DropDownList>
                    </div>
        
                    <div class="input-field col s12">
                         Lugar del incidente:
                               <div class="map-responsive">
          
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d254508.51641063165!2d-74.24789205374572!3d4.648283717688444!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f9bfd2da6cb29%3A0x239d635520a33914!2zQm9nb3TDoQ!5e0!3m2!1ses!2sco!4v1567774956809!5m2!1ses!2sco"  frameborder="0" style="border:0;" allowfullscreen=""></iframe>

                </div>
               <%--         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>--%>
                    </div>
                    <div class="clearfix"></div>
                     <div class="input-field col s6">
                         Ruta de Servicio:
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="13-2, 60, etc..."></asp:TextBox>
                    </div>
                    <div class="input-field col s6">
                                Identificador del
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                :
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Z80-7122"></asp:TextBox>
                    </div>
                     <div class="clearfix"></div>
                    <div class="input-field col s6">
                         Fecha incidente:
                       <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="#0D47A1" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                           <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#0D47A1" Height="8pt" />
                           <DayStyle BackColor="#CCCCCC" />
                           <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                           <OtherMonthDayStyle ForeColor="#999999" />
                           <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                           <TitleStyle BackColor="#0D47A1" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                           <TodayDayStyle BackColor="#0D47A1" ForeColor="White" />
                         </asp:Calendar>
                    </div>
                    <div class="input-field col s6">
                        Descripcion de la denuncia:
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="materialize-textarea" textmode="multiline"></asp:TextBox>
           
                    </div>
                    
                    </div>
                    <div class="col s12 center-align">
                        <br />
                               <asp:Button ID="Button1" runat="server" Text="Enviar" CssClass="waves-effect waves-light blue-grey darken-4 btn "/>
                    </div>
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
        
        