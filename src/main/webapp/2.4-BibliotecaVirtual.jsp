<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Biblioteca Virtual</title>                
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Imagenes/Libros.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/Style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            a.botonMenu:hover, #enlaceF{
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
                <a href="2-indexU.jsp"><img src="Imagenes/escudo.png" alt="NotFound" id="escudo"></a>                
            </div>
            <div class="col-sm-10" id="header2">
                <div id="mainTitle"><p id="titulo">BIBLIOTECA COLEGIO ANTONIO NARIÑO</p></div>
            </div>
        </header>
        <br>
        <!--Menu-->
        <div class="col-sm-2" id="menu">
            <a href="2-indexU.jsp" class="botonMenu col-sm-12" id="enlaceA">Inicio</a>
            <a href="2.1-PrincipalInventarioU.jsp" class="botonMenu col-sm-12" id="enlaceB">Elementos Biblioteca</a>            
            <a href="2.2-EstadoUsuariosU.jsp" class="botonMenu col-sm-12" id="enlaceC">Mi Estado</a>
            <a href="2.3-HistorialPrestamosU.jsp" class="botonMenu col-sm-12" id="enlaceD">Historial Prestamos</a>            
            <a href="2.4-BibliotecaVirtual.jsp" class="botonMenu col-sm-12" id="enlaceE">Biblioteca Virtual</a>
            <a href="2.5-CambiarClaveU.jsp" class="botonMenu col-sm-12" id="enlaceF">Cambiar Clave</a>
            <a href="index.jsp" class="botonMenu col-sm-12" id="enlaceG">Salir</a>            
        </div>

        <!--Contenido-->
        <div class="col-sm-10" id="content">
            <br>
            <br>
            <table style="width:100%">

                <tr style="height: 150px"><td><a href="https://freeditorial.com/es"><img id="lib1" src="Imagenes/lib1.PNG" alt="Not Found"></a></td></tr>

                <tr style="height: 150px"><td><a href="https://espanol.free-ebooks.net/"><img id="lib2" src="Imagenes/lib2.PNG" alt="Not Found"></a></td></tr>

                <tr style="height: 150px"><td><a href="https://portaldeeducacion.com/150-libros-educativos-en-pdf-gratis-para-docentes/"><img id="lib3" src="Imagenes/lib3.PNG" alt="Not Found"></a></td></tr>

                <tr style="height: 150px"><td><a href="http://bibliotecadigital.educ.ar/articles/index/"><img id="lib4" src="Imagenes/lib4.PNG" alt="Not Found"></a></td></tr>

                <tr style="height: 150px"><td><a href="https://espanol.free-ebooks.net/"><img id="lib5" src="Imagenes/lib5.PNG" alt="Not Found"></a></td></tr>

                <tr style="height: 150px"><td><a href="https://libroscolegio.blogspot.com.co/"><img id="lib6" src="Imagenes/lib6.PNG" alt="Not Found"></a></td></tr>

            </table> 


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