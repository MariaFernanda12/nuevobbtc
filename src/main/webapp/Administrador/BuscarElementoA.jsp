<%@page import="Modelo.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Elemento"%>
<%@page import="Controlador.CrearListar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Buscar</title>                
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Imagenes/Libros.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/Style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <style>          
            #d, #enlace1{
                background-color: black; 
            }
            input{
                width: 100%;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 4px;
                font-size: 32px;
                background-color: white;               

            }

            #ingreseBuscarEt, #ingreseBuscarNom{
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
            a:hover, #d{              
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
                <a href="Administrador/indexA.jsp"><img src="Imagenes/escudo.png" alt="NotFound" id="escudo"></a>                
            </div>
            <div class="col-sm-10" id="header2">
                <div id="mainTitle"><p id="titulo">BIBLIOTECA COLEGIO ANTONIO NARIÑO</p></div>
            </div>
        </header>
        <br>
        <!--Menu-->
        <div class="col-sm-2" id="menu">
            <a href="Administrador/indexA.jsp" class="botonMenu col-sm-12" id="enlace0">Inicio</a>
            <a href="Administrador/PrincipalInventarioA.jsp" class="botonMenu col-sm-12" id="enlace1">Inventario</a>
            <a href="Administrador/NuevoPrestamoA.jsp" class="botonMenu col-sm-12" id="enlace2">Nuevo Prestamo</a>
            <a href="Administrador/DevolucionA.jsp" class="botonMenu col-sm-12" id="enlace3">Devolucion Prestamo</a>
            <a href="Administrador/PazSalvo" class="botonMenu col-sm-12" id="enlace4">Paz y Salvo</a>
            <a href="Administrador/Administrador/ListarPrestamosA" class="botonMenu col-sm-12" id="enlace5">Historial Prestamos</a>            
            <a href="Administrador/CambiarClaveA.jsp" class="botonMenu col-sm-12" id="enlace6">Cambiar Clave</a>
            <a href="index.jsp" class="botonMenu col-sm-12" id="enlace7">Salir</a>
        </div>

        <!--Contenido-->
        <div class="col-sm-10" id="content">
            <ul>
                <li><a href="Administrador/IngresoElementoA.jsp" id="a">Ingresar</a></li>
                <li><a href="Administrador/CrearListarA" id="b">Listar</a></li>
                <li><a href="Administrador/ListarPorAreaA.jsp" id="c">Listar por Area</a></li>
                <li><a href="Administrador/BuscarElementoA.jsp" id="d">Busqueda</a></li>
                <li><a href="Administrador/ModificarA.jsp" id="e">Modificar</a></li>
                <li><a href="Administrador/BorrarA.jsp" id="f">Borrar</a></li>
            </ul>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div class="col-sm-6">
                <a id="porEtiqueta" href="BuscarPorEtiquetaA.jsp">Buscar por Etiqueta</a>
            </div>
            <div class="col-sm-6">
                <a id="porNombre" href="BuscarPorNombreA.jsp">Buscar por Nombre</a>
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