<%@page import="Modelo.PrestamoU"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>HistorialPrestamosU</title>                
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Imagenes/Libros.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/Style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            a.botonMenu:hover, #enlace3{
                color: white;
                background-color: black;                 
                font-size: 37px;    
                font-family: fantasy;
                text-shadow: -2px -2px 1px #000, 2px 2px 1px #000, -2px 2px 1px #000, 2px -2px 1px #000;
            }

            th, td {
                text-align: center;
            }
            #b{
                background-color: black;
            }
            #tituloInventario{
                text-align: center;
                color: white;
                font-size:52px;   
                font-family: "Futura Md BT", serif;
                font-weight: bold;
                text-shadow: -2px -2px 3px #000, 2px 2px 3px #000, -2px 2px 3px #000, 2px -2px 3px #000;

            }
            table{
                text-align: center;
                color: black;
                font-family: "Futura Md BT", serif;
                font-size: 22px;
                border-color: black;
                background-color: white;
            }
            #contentTable{
                text-align: center;
                padding-left: 100px;
            }

            #global {
                height: 80%;
                width: 100%;
                border: 1px solid #03a933;
                padding-left: 0.5em;
                background-color: #03a933;               
                overflow-y: scroll;
                text-align: center;
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
            <div id="global">
                <div class="col-sm-11">
                    <h1 id="tituloInventario">HistorialU Préstamos</h1>
                    <div id="contentTable">
                        <table border="2">
                            <tr>
                                <th style="width:400px ;height: auto">Codigo del ElementoU</th>                                                                 
                                <th style="width:400px ;height: auto">Fecha de Devolucion</th>                                    
                                <th style="width:400px ;height: auto">EstadoU del PrestamoU</th>                                 

                            </tr>
                            <%  if (request.getAttribute("PrestamoU") != null) {
                                    ArrayList<PrestamoU> pr = (ArrayList<PrestamoU>) request.getAttribute("PrestamoU");
                                    for (PrestamoU PrestamoU : pr) {
                            %>            
                            <tr>   
                                <td> <%=PrestamoU.getEtiquetaInv()%></td>                             
                                <td> <%=PrestamoU.getFecha()%></td>           
                                <td> <%=PrestamoU.getEstadoUSol()%></td>      
                            </tr>

                            <%
                                    }
                                }
                            %>
                        </table>
                    </div>
                </div>
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
