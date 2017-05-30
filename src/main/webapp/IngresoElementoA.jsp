<%@page import="java.util.ArrayList"%>
<%@page import="Controlador.CrearListar"%>
<%@page import="Modelo.Elemento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Ingreso</title>                
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Imagenes/Libros.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/Style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            a.botonMenu:hover{
                color: white;
                background-color: black;
                text-decoration:none; 
                font-size: 37px;    
                font-family: fantasy;
                text-shadow: -2px -2px 1px #000, 2px 2px 1px #000, -2px 2px 1px #000, 2px -2px 1px #000;
            }
            #tituloIngresar{
                text-align: center;
                color: white;
                font-size:52px;   
                font-family: "Futura Md BT", serif;
                font-weight: bold;
                text-shadow: -2px -2px 3px #000, 2px 2px 3px #000, -2px 2px 3px #000, 2px -2px 3px #000;

            }

            input, select {
                width: 70%;            
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;

            }
            #botonEnviar{
                text-align: center
            }
            #global {
                height: 80%;
                width: 100%;
                border: 1px solid #03a933;
                padding-left: 0.5em;
                background-color: #03a933;               
                overflow-y: scroll;
            }

            #a{
                background-color: black; 
            }
            a.botonMenu:hover, #enlace1, #a{
                color: white;
                background-color: black;
                text-decoration:none; 
                font-size: 37px;    
                font-family: fantasy;
                text-shadow: -2px -2px 1px #000, 2px 2px 1px #000, -2px 2px 1px #000, 2px -2px 1px #000;
            }
            .alert{                
                font-size:30px;
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
            <a href="PazSalvoA" class="botonMenu col-sm-12" id="enlace4">Paz y Salvo</a>
            <a href="ListarPrestamos" class="botonMenu col-sm-12" id="enlace5">Historial Prestamos</a>            
            <a href="CambiarClaveA.jsp" class="botonMenu col-sm-12" id="enlace6">Cambiar Clave</a>
            <a href="index.jsp" class="botonMenu col-sm-12" id="enlace7">Salir</a>
        </div>

        <!--Contenido-->
        <div class="col-sm-10" id="content">

            <ul>
                <li><a href="IngresoElementoA.jsp" id="a">Ingresar</a></li>
                <li><a href="CrearListar" id="b">Listar</a></li>
                <li><a href="ListarPorAreaA.jsp" id="c">Listar por Area</a></li>
                <li><a href="BuscarElementoA.jsp" id="d">Busqueda</a></li>
                <li><a href="ModificarA.jsp" id="e">ModificarA</a></li>
                <li><a href="BorrarA.jsp" id="f">Borrar</a></li>
            </ul>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div id="global">
                <div class="col-sm-11">
                    <%
                        if (request.getAttribute("insersion") != null) {
                            String respuesta = (String) request.getAttribute("insersion");
                            if (respuesta.equals("OK")) {

                    %>
                    <div class="alert alert-success">
                        <strong id="m1">Success!&nbsp&nbsp&nbsp</strong> Elemento registrado correctamente
                    </div>
                    <%        } else if (respuesta.equals("NOK")) {
                    %>
                    <div class="alert alert-warning">
                        <strong class="m1">Warning!&nbsp&nbsp&nbsp</strong>Problemas durante el registro
                    </div>
                    <%
                            }
                        }
                    %>
                    <h1 id="tituloIngresar">Ingresar Elemento</h1>

                    <br>
                    <div class="contenido">
                        <form method="POST" action="CrearListar">

                            <p class="letra">Etiqueta:</p>
                            <input name="etiqueta" placeholder="Codigo único del ElementoA...">
                            <br>
                            <br>
                            <br>
                            <p class="letra">Nombre: </p>
                            <input name="nombre" placeholder="Nombre del libro o ElementoA...">
                            <br>
                            <br>
                            <br>
                            <p class="letra">Cantidad:</p>
                            <input name="cantidadDisponible" placeholder="Cantidad de ElementoAs a ingresar...">
                            <br>
                            <br>
                            <br>                            
                            <p class="letra">Ubicacion: </p>
                            <select name="ubicacion">
                                <option>--Selecciona--</option>
                                <option>Biblioteca</option>
                                <option>Salón</option>
                            </select>
                            <br>
                            <br>
                            <br>
                            <p class="letra">Propiedad:</p>
                            <select name="propiedad">
                                <option>--Selecciona--</option>
                                <option>Alcaldia Mosquera</option>
                                <option>I. E. Antonio Nariño</option>
                            </select>
                            <br>
                            <br>
                            <br>
                            <p class="letra">Responsable: </p>
                            <select name="responsable">
                                <option>--Selecciona--</option>
                                <option>Arnulfo</option>
                            </select>
                            <br>
                            <br>
                            <br>
                            <p class="letra">Tipo de Elemento:</p>
                            <select name="area">
                                <option>--Selecciona--</option>
                                <option>Enciclopedia</option>
                                <option>Diccionario </option>
                                <option>Español</option>
                                <option>Matematicas</option>
                                <option>Fisica</option>
                                <option>Quimica</option>
                                <option>Sociales</option>
                                <option>Ingles</option>
                                <option>Ciencias</option>
                                <option>Preescolar</option>
                                <option>Filosofia</option>
                                <option>Religion</option>
                                <option>Etica</option>
                                <option>Informatica</option>
                                <option>Atlas</option>
                                <option>Salud y Educacion Sexual</option>
                                <option>Dibujo</option>
                                <option>Institucionales</option>
                                <option>Material Didactico</option>
                                <option>Multimedia</option>
                                <option>Equipo</option>
                            </select>
                            <br>
                            <br>
                            <br>
                            <br>
                            <div id="botonEnviar"><input name="Enviar" type="submit" class="enviar"></div>
                            <br>
                            <br>
                            <br>

                        </form>


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