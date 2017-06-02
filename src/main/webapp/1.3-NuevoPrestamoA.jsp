<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>NuevoPrestamo</title>                
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
                text-decoration:none; 
                font-size: 37px;    
                font-family: fantasy;
                text-shadow: -2px -2px 1px #000, 2px 2px 1px #000, -2px 2px 1px #000, 2px -2px 1px #000;
            }
            h1{
                text-align: center;
                color: white;
                font-size:52px;   
                font-family: "Futura Md BT", serif;
                font-weight: bold;
                text-shadow: -2px -2px 3px #000, 2px 2px 3px #000, -2px 2px 3px #000, 2px -2px 3px #000;
            }
            .alert{                
                font-size:30px;
                text-align: center;
            }           

            input{
                width: 50%;            
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;

            }
            #boton{
                text-align: center;
            }
            #enlace5{
                position: absolute;
                top: 500px;
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
            <h1>NUEVO PRESTAMO</h1>
            <br>
            <br>                       
            <%
                if (request.getAttribute("Prestamo") != null) {
                    String respuesta = (String) request.getAttribute("Prestamo");
                    if (respuesta.equals("OK")) {

            %>
            <div class="alert alert-success">
                <strong>Success!&nbsp&nbsp&nbsp</strong>Prestamo Registrado.
            </div>
            <%        } else if (respuesta.equals("NOK")) {
            %>
            <div class="alert alert-warning">
                <strong class="m1">Warning!&nbsp&nbsp&nbsp</strong>Prestamo No Registrado.
            </div>
            <%
                    }
                }
            %>
            <div class="contenido">
                <form method="POST" action="NuevoPrestamo">
                    <p class="letra">Identificación Solicitante:</p>              
                    <input name="id"  placeholder="Número de identificación...">                    
                    <br>
                    <br>
                    <br>
                    <p class="letra">Etiqueta del Elemento:</p>                
                    <input name="etiqueta"  placeholder="Etiqueta...">
                    <br>
                    <br>
                    <br>
                    <p class="letra">Cantidad:</p>                
                    <input name="cantidad"  placeholder="Cantidad de elementos...">
                    <br>
                    <br>
                    <br>
                    <p class="letra">Fecha de Devolucion: </p>
                    <input type="date" name="fechaDev">
                    <br>
                    <br>
                    <br>
                    <div id="boton"><input name="Prestar" type="submit" class="enviar" value="PRESTAR"></div>         
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
