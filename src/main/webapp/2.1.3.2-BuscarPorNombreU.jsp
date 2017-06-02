<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Elemento"%>
<%@page import="Controlador.CrearListar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>BuscarPorEtiqueta</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Imagenes/Libros.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/Style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>        
        <style>
            input{
                width: 50%;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 4px;
                font-size: 32px;
                background-color: white;

            }

            p {
                color: white;
                font-size:30px;
                font-family: "Futura Md BT", serif;
                font-weight: bold;

            }
            #botonEnviar1, #botonEnviar2{
                text-align: center
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
            th, td {
                text-align: center;
            }
            .col-sm-6{
                text-align: center;
                align-content: center;
            }
            a{
                -webkit-appearance: button;
                -moz-appearance: button;
                appearance: button;
                background-color: #039d4f;
                text-align: center;
                color: white;
                font-size: 37px;
                font-family: fantasy;
                text-shadow: -2px -2px 1px #000, 2px 2px 1px #000, -2px 2px 1px #000, 2px -2px 1px #000;
            }
            a:hover, #c, #enlaceB{
                background-color: black;
                text-decoration: none;
                text-align: center;
                color: white;
                font-size: 37px;
                font-family: fantasy;
                text-shadow: -2px -2px 1px #000, 2px 2px 1px #000, -2px 2px 1px #000, 2px -2px 1px #000;
                cursor: pointer;
            }            
            #porEtiqueta, #porNombre{
                height: 100px;
                width: 200px;
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
            <ul>                
                <li><a href="CrearListar" id="a">Lista de Elementos</a></li>
                <li><a href="2.1.2-ListarPorAreaU.jsp" id="b">Lista por Area</a></li>
                <li><a href="2.1.3-BuscarElementoU.jsp" id="c">Busqueda</a></li>
            </ul>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div id="global">


                <p id="ingreseBuscarNom">Ingrese el nombre que desea buscar:</p>            
                <form method="GET" action="BuscarElemento">
                    <input type="text" name="Buscar" placeholder="Nombre o fragmento del nombre...">
                    <br>
                    <br>
                    <br>
                    <div id="botonEnviar2"><input name="Enviar" type="submit" class="enviar" value="BUSCAR"></div>
                </form> 

                <br>
                <br>
                <br>
                <br>
                <%  if (request.getAttribute("etiqueta2") != null) {
                        ArrayList<Elemento> elm = (ArrayList<Elemento>) request.getAttribute("etiqueta2");

                %> 

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
                    <%  for (Elemento element : elm) {%>

                    <tr>    
                        <td> <%=element.getEtiqueta()%> </td>
                        <td style="width:700px ;height: auto" ><%=element.getNombre()%></td>
                        <td> <%=element.getCantidadDisponible()%></td>  
                        <td> <%=element.getUbicacion()%> </td>  
                        <td><%=element.getPropiedad()%></td>
                        <td><%=element.getResponsable()%></td> 
                        <td> <%=element.getArea()%></td>   

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