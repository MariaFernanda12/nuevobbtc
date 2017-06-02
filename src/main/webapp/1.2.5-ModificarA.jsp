<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Elemento"%>
<%@page import="Controlador.CrearListar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Modificar</title>                
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Imagenes/Libros.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/Style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <style>          
            input, select{
                width: 70%;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 4px;
                font-size: 28px;
                background-color: white;               

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
            a:hover, #e, #enlace1{              
                background-color: black;
                text-decoration: none;
                text-align: center;            
                color: white;
                font-size: 37px;    
                font-family: fantasy;        
                text-shadow: -2px -2px 1px #000, 2px 2px 1px #000, -2px 2px 1px #000, 2px -2px 1px #000;
                cursor: pointer;
            }

            #boton{
                text-align: center;
            }

            #enlace5{
                position: absolute;
                top: 500px;
            }  
            .letra{
                color: white;
                font-size:29px;   
                font-family: "Futura Md BT", serif;
                font-weight: bold;

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
                <li><a href="2.1-IngresoElementoA.jsp" id="a">Ingresar</a></li>
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
            <%
                if (request.getAttribute("Modificar") != null) {
                    String respuesta = (String) request.getAttribute("Modificar");
                    if (respuesta.equals("OK")) {

            %>
            <div class="alert alert-success">
                <strong id="m1">Success!&nbsp&nbsp&nbsp</strong> Elemento modificado compruebe en la lista de inventario.
            </div>
            <%        } else if (respuesta.equals("NOK")) {
            %>
            <div class="alert alert-warning">
                <strong class="m1">Warning!&nbsp&nbsp&nbsp</strong>Problemas con la modificación
            </div>
            <%
                    }
                }
            %>
            <div class="contenido">
                <form method="POST" action="Modificar">

                    <p class="letra">Etiqueta del Elemento:</p>               
                    <input name="etiqueta"  placeholder="Etiqueta del Elemento que quiere modificar...">
                    <br>
                    <br>
                    <br>
                    <p class="letra">Nueva Cantidad:</p>                
                    <input name="cantidad"  placeholder="Nueva Cantidad...">
                    <br>
                    <br>
                    <br>
                    <p class="letra">Nueva Ubicacion:</p>                
                    <input name="ubicacion" placeholder="Nueva Ubicacion...">
                    <br>
                    <br>
                    <br>

                    <div id="boton"><input name="Prestar" type="submit" class="enviar" value="Modificar"></div>         
                </form>  
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