
<%@page import="Modelo.HistorialPrestamos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>MiEstadoU</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Imagenes/Libros.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/Style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            a.botonMenu:hover, #enlace2{
                color: white;
                background-color: black;
                font-size: 37px;
                font-family: fantasy;
                text-shadow: -2px -2px 1px #000, 2px 2px 1px #000, -2px 2px 1px #000, 2px -2px 1px #000;
            }           
            h1{
                text-align: left;
                color: white;
                font-size: 37px;
                font-family: fantasy;
                text-shadow: -2px -2px 1px #000, 2px 2px 1px #000, -2px 2px 1px #000, 2px -2px 1px #000;
            }
            #titulo, #titulo2{
                text-align: center;
                color: white;
                font-size:52px;   
                font-family: "Futura Md BT", serif;
                font-weight: bold;
                text-shadow: -2px -2px 3px #000, 2px 2px 3px #000, -2px 2px 3px #000, 2px -2px 3px #000;

            }
            #contentTable{
                text-align: center;
                padding-left: 100px;
            }
            th, td {
                text-align: center;
            }
            table{
                text-align: center;
                color: black;
                font-family: "Futura Md BT", serif;
                font-size: 22px;
                border-color: black;
                background-color: white;
            }
            .sub{
                text-align: left;
                color: white;                                 
                font-size: 37px;    
                font-family: fantasy;
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
            <h1 id="titulo2">Estado Actual</h1>
            <br>
            <p class="sub">A la fecha estos son los elementos que no ha devuelto:</p>
            <div id="contentTable">
                <table border="2">
                    <tr>                        
                        <th style="width:400px ;height: auto">Nombre del Elemento</th>
                        <th style="width:400px ;height: auto">Cantidad</th>
                        <th style="width:400px ;height: auto">Fecha de Pedido</th>
                        <th style="width:400px ;height: auto">Fecha de Devolucion</th>                                    
                        <th style="width:400px ;height: auto">Estado del Prestamo</th>                                 

                    </tr>
                    <%  if (request.getAttribute("Prestamo") != null) {
                            ArrayList<HistorialPrestamos> pr = (ArrayList<HistorialPrestamos>) request.getAttribute("Prestamo");
                            for (HistorialPrestamos p : pr) {
                    %>            
                    <tr>   
                        <td> <%= p.getNombreElemento()%></td>                             
                        <td> <%= p.getCantidadPrestamo()%></td>
                        <td> <%= p.getFechaInicio()%></td>
                        <td> <%= p.getFechaDevolucion()%></td>
                        <td> <%= p.getEstadoPrestamo()%></td>
                    </tr>

                    <%
                            }
                        }
                    %>
                </table>
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