
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Elemento"%>
<%@page import="Controlador.CrearListar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Listado de Elemntos</title>                
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Imagenes/Libros.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/Style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>   
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

            a.botonMenu:hover, #enlace1, #b{
                color: white;
                background-color: black;
                text-decoration:none; 
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
                <a href="1-indexA.jsp"><img src="Imagenes/escudo.png" alt="NotFound" id="escudo"></a>                
            </div>
            <div class="col-sm-10" id="header2">
                <div id="mainTitle"><p id="titulo">BIBLIOTECA COLEGIO ANTONIO NARIÑO</p></div>
            </div>
        </header>
        <br>
        <!--Menu-->
        <div class="col-sm-2" id="menu">
            <a href="1-indexA.jsp" class="botonMenu col-sm-12" id="enlace0">Inicio</a>
            <a href="1.2-PrincipalInventarioA.jsp" class="botonMenu col-sm-12" id="enlace1">Inventario</a>
            <a href="1.3-NuevoPrestamoA.jsp" class="botonMenu col-sm-12" id="enlace2">Nuevo Prestamo</a>
            <a href="1.4-DevolucionA.jsp" class="botonMenu col-sm-12" id="enlace3">Devolucion Prestamo</a>
            <a href="1.5-PazSalvoA.jsp" class="botonMenu col-sm-12" id="enlace4">Paz y Salvo</a>
            <a href="1.6-HistorialPrestamosA.jsp" class="botonMenu col-sm-12" id="enlace5">Historial Prestamos</a>            
            <a href="1.7-CambiarClaveA.jsp" class="botonMenu col-sm-12" id="enlace6">Cambiar Clave</a>
            <a href="index.jsp" class="botonMenu col-sm-12" id="enlace7">Salir</a>
        </div>

        <!--Contenido-->
        <div class="col-sm-10" id="content">
            <ul>
                <li><a href="1.2.1-IngresoElementoA.jsp" id="a">Ingresar</a></li>
                <li><a href="CrearListar" id="b">Listar</a></li>
                <li><a href="1.2.3-ListarPorAreaA.jsp" id="c">Listar por Area</a></li>
                <li><a href="1.2.4-BuscarElementoA.jsp" id="d">Busqueda</a></li>
                <li><a href="1.2.5-ModificarA.jsp" id="e">Modificar</a></li>
                <li><a href="1.2.6-BorrarA.jsp" id="f">Borrar</a></li>
            </ul>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div id="global">
                <div class="col-sm-11">
                    <h1 id="tituloInventario">Inventario</h1>
                    <div id="contentTable">
                        <table border="2">
                            <tr>
                                <th>Etiqueta</th>                                               
                                <th style="width:700px">Nombre</th>                    
                                <th>Cantidad Disponible</th>  
                                <th>Ubicacion</th>
                                <th>Propiedad</th>
                                <th>Responsable</th>
                                <th>Area</th>

                            </tr>
                            <%  if (request.getAttribute("Elemento") != null) {
                                    ArrayList<Elemento> elm = (ArrayList<Elemento>) request.getAttribute("Elemento");
                                    for (Elemento ElementoA : elm) {
                            %>            
                            <tr>    
                                <td> <%=ElementoA.getEtiqueta()%> </td>
                                <td style="width:700px ;height: auto" ><%=ElementoA.getNombre()%></td>
                                <td> <%=ElementoA.getCantidadDisponible()%></td>  
                                <td> <%=ElementoA.getUbicacion()%> </td>  
                                <td><%=ElementoA.getPropiedad()%></td>
                                <td><%=ElementoA.getResponsable()%></td> 
                                <td> <%=ElementoA.getArea()%></td>   

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