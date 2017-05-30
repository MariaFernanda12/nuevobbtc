<%@page import="Modelo.HistorialPrestamos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Paz-Salvo</title>                
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Imagenes/Libros.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/Style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            a.botonMenu:hover, #enlace4{
                color: white;
                background-color: black;                 
                font-size: 37px;    
                font-family: fantasy;
                text-shadow: -2px -2px 1px #000, 2px 2px 1px #000, -2px 2px 1px #000, 2px -2px 1px #000;
            }
            #enlace5{
                position: absolute;
                top: 500px;
            }
            input{
                width: 70%;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 4px;
                font-size: 32px;
                background-color: white;               

            }
            #botonEnviar{
                text-align: center
            }
            #p1 {
                color: white;
                font-size:34px;   
                font-family: "Futura Md BT", serif;
                font-weight: bold;

            }
            #titulo, #titulo2{
                color: white;
                font-size:52px;   
                font-family: "Futura Md BT", serif;
                font-weight: bold;
                text-shadow: -2px -2px 3px #000, 2px 2px 3px #000, -2px 2px 3px #000, 2px -2px 3px #000;
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
            #contentTable{
                text-align: center;
            }


        </style>

    </head>
    <body>
        <header>
            <!--Encabezado-->
            <div class="col-sm-2" id="header1">
                <a href="indexA.jsp"><img src="Imagenes/escudo.png" alt="NotFound" id="escudo"></a>                
            </div>
            <div class="col-sm-10" id="header2">
                <div id="mainTitle"><p id="titulo">BIBLIOTECA COLEGIO ANTONIO NARIÑO</p></div>
            </div>
        </header>
        <br>
        <!--Menu-->
        <div class="col-sm-2" id="menu">
            <a href="indexA.jsp" class="botonMenu col-sm-12" id="enlace0">Inicio</a>
            <a href="PrincipalInventarioA.jsp" class="botonMenu col-sm-12" id="enlace1">Inventario</a>
            <a href="NuevoPrestamoA.jsp" class="botonMenu col-sm-12" id="enlace2">Nuevo Prestamo</a>
            <a href="DevolucionA.jsp" class="botonMenu col-sm-12" id="enlace3">Devolucion Prestamo</a>
            <a href="PazSalvo" class="botonMenu col-sm-12" id="enlace4">Paz y Salvo</a>
            <a href="ListarPrestamos" class="botonMenu col-sm-12" id="enlace5">Historial Prestamos</a>            
            <a href="CambiarClaveA.jsp" class="botonMenu col-sm-12" id="enlace6">Cambiar Clave</a>
            <a href="index.jsp" class="botonMenu col-sm-12" id="enlace7">Salir</a>
        </div>

        <!--Contenido-->
        <div class="col-sm-10" id="content">            
            <h1 id="titulo2" style="text-align: center">Paz y Salvo</h1>
            <br>
            <p id="p1">A la fecha, los siguientes usuarios por sugerencia de la 
                biblioteca no se les debería generar paz y salvo dado que tienen prestamos activos:</p>

            <div id="contentTable">
                <div id="global">
                    <table border="2">
                        <tr>
                            <th style="width:800px ;height: auto">Nombre Elemento</th>
                            <th style="width:200px ;height: auto">Cantidad</th>
                            <th style="width:300px ;height: auto">Nombre Solicitante</th>
                            <th style="width:300px ;height: auto">Cusrso/Area</th>                                 
                            <th style="width:300px ;height: auto">Fecha Pedido</th> 
                            <th style="width:300px ;height: auto">Fecha Devolución</th>                                    
                            <th style="width:300px ;height: auto">Estado</th>   


                        </tr>
                        <%  if (request.getAttribute("Paz") != null) {
                                ArrayList<HistorialPrestamos> modelo = (ArrayList<HistorialPrestamos>) request.getAttribute("Paz");
                                for (HistorialPrestamos paz : modelo) {
                        %>            
                        <tr>    
                        <tr>   
                            <td><%=paz.getNombreElemento()%></td>
                            <td> <%=paz.getCantidadPrestamo()%> </td>                                
                            <td> <%=paz.getNombreUsuario()%></td>           
                            <td> <%=paz.getCursoArea()%></td>
                            <td> <%=paz.getFechaInicio()%></td>
                            <td> <%=paz.getFechaDevolucion()%></td>
                            <td> <%=paz.getEstadoPrestamo()%></td>
                        </tr>

                        </tr>

                        <%
                                }
                            }
                        %>

                    </table>
                </div>
            </div>

            <a href="ExcelUsuariosNoPazSalvo">Descargar en Excel</a>
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