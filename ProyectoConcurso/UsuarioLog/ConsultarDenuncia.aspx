<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarDenuncia.aspx.cs" Inherits="ProyectoConcurso.Usuario.ConsultarDenuncia" %>


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

    <style type="text/css">
.gridview
{
    margin:5px;
    border:none;
    background-color:#003399;
}

.gridview tr {
    text-align:left;
    border-bottom: solid;
    border-color:#FFFFFF;
    border-width:10px;
    font-size: 16px;   
    
}
    
.gridview th{
    border:none;
    background-color:#263238;
    padding: 5px;
}

.gridview td{
    border:none;
    padding: 15px;
    margin: 5px;
}
    </style>
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
                    
                
               
                    <br />
                   <asp:GridView ID="dvp" runat="server"  EmptyDataText="No hay registros." CssClass="gridview white-text" AllowPaging="True" AutoGenerateColumns="False" >
                       
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                   
                    <%-- Consulta --%>


                    <asp:Panel ID="Panel1" runat="server" BackColor="#1565C0" Height="450px" Visible="False">
                   
                    <div class="input-field col s12 m6 blue-grey blue darken-4 white-text" style="border-color: #003399">
                
                            Tu denuncia es contra un:
                           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
           
                    </div>
        
                    <div class="input-field col s12 m6  blue-grey blue darken-4 white-text">
                         Lugar del incidente:
                       <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="clearfix blue-grey blue darken-4 white-text"></div>
                     <div class="input-field col s12 m6  blue-grey blue darken-4 white-text">
                         Ruta de Servicio:
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="input-field col s12 m6  blue-grey blue darken-4 white-text">
                                Identificador del
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                                :
                       <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </div>
                     <div class="clearfix blue-grey blue darken-4 white-text"></div>
                    <div class="input-field col s12 m6  blue-grey blue darken-4 white-text">
                         Fecha incidente:
                      <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </div>

                         <div class="input-field col s12 m6  blue-grey blue darken-4 white-text">
                        Estado de la Denuncia:
                                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
           
                    </div>
                           <div class="clearfix blue-grey blue darken-4 white-text"></div>
                    <div class="input-field col s12 blue-grey blue darken-4 white-text">
                        Descripcion de la denuncia:
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="materialize-textarea" textmode="multiline" ClientIDMode="Static" Enabled="False" EnableTheming="True"></asp:TextBox>
           
                    </div>
                    
                    
                        </asp:Panel>
                </div>
            </div>
        </div>


       
       <!-- Footer -->
    
    </section>
    &nbsp;<!-- jQuery --><script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script><script>window.jQuery || document.write('<script src="../js/jquery-2.2.0.min.js"><\/script>')</script><!-- Materialize JS --><script src="../js/materialize.min.js"></script><!-- Malihu jQuery custom content scroller JS --><script src="../js/jquery.mCustomScrollbar.concat.min.js"></script><!-- MaterialDark JS --><script src="../js/main.js"></script></form>
</body>
</html>
        
        