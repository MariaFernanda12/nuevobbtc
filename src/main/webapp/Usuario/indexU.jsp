<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>                
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Imagenes/Libros.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/Style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            a.botonMenu:hover, #enlaceA{
                color: white;
                background-color: black;                 
                font-size: 37px;    
                font-family: fantasy;
                text-shadow: -2px -2px 1px #000, 2px 2px 1px #000, -2px 2px 1px #000, 2px -2px 1px #000;
            }
        </style>

    </head>
    <body>

        <header>
            <!--Encabezado-->
            <div class="col-sm-2" id="header1">
                <a href="indexU.jsp"><img src="Imagenes/escudo.png" alt="NotFound" id="escudo"></a>                
            </div>
            <div class="col-sm-10" id="header2">
                <div id="mainTitle"><p id="titulo">BIBLIOTECA COLEGIO ANTONIO NARIÑO</p></div>
            </div>
        </header>
        <br>
        <!--Menu-->
        <div class="col-sm-2" id="menu">
            <a href="indexU.jsp" class="botonMenu col-sm-12" id="enlaceA">Inicio</a>
            <a href="PrincipalInventarioU.jsp" class="botonMenu col-sm-12" id="enlaceB">Elementos Biblioteca</a>            
            <a href="EstadoU" class="botonMenu col-sm-12" id="enlaceC">Mi Estado</a>
            <a href="ListarPrestamos" class="botonMenu col-sm-12" id="enlaceD">Historial Prestamos</a>
            <a href="CambiarClaveU.jsp" class="botonMenu col-sm-12" id="enlaceE">Cambiar Clave</a>
            <a href="BibliotecaVirtual.jsp" class="botonMenu col-sm-12" id="enlaceF">Biblioteca Virtual</a>
            <a href="index.jsp" class="botonMenu col-sm-12" id="enlaceG">Salir</a>            
        </div>

        <!--Contenido-->
        <div class="col-sm-10" id="content">
            <%if (request.getAttribute("Exito") != null) {
                    Usuario usr2 = (Usuario) request.getAttribute("Exito");
            %>  

            <h1 class="mensajeBienvenida">Bienvenido <%=usr2.getTipo()%> , <%=usr2.getNombre()%> </h1>
            <%
                }
            %>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">

                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img class="carr" src="Imagenes/img4.jpg" alt="img4" style="width:100%;">
                    </div>

                    <div class="item">
                        <img class="carr" src="Imagenes/img3.jpg" alt="img3" style="width:100%;">
                    </div>

                    <div class="item">
                        <img class="carr" src="Imagenes/img2.jpg" alt="img2" style="width:100%;">
                    </div>
                    <div class="item">
                        <img class="carr" src="Imagenes/img1.jpg" alt="img2" style="width:100%;">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>


        </div>
        <br>
        <footer>

            <div class="col-sm-12" id="footer">
                <div style="text-align: center">
                    <p>Creado por Maria Fernanda Martinez y Mateo Ortiz Rojas</p>
                    <img id="logoSergio" src="Imagenes/sergio.png" alt="NotFound">
                </div>

            </div>   


        </footer>



    </body>
</html>