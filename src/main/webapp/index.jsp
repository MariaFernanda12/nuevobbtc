
<!DOCTYPE html>
<html>
    <head>
        <title>Bienvenido</title>                
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body>
        <header>

        </header>
        <br>
        <!--Contenido-->
        <div class="col-sm-12" id="content">
            <br><br><br><br><br><br><br><br>

            <div>
                <%
                    if (request.getAttribute("Failed") != null) {
                        String respuesta = (String) request.getAttribute("Failed");
                        if (respuesta.equals("NOK")) {
                %>
                <div class="alert alert-danger">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                    <strong class="m1">Warning!</strong>USUARIO Y/O CONTRASEÑA INCORRECTOS.
                </div>

                <%                }
                %>
                <%                }
                %>
            </div>
            <h1 style="text-align: center; font-size: 43px" >Bienvenido</h1>



            <div class="centrado">
                <form method="POST" action="ValidarUsuario">
                    <div style="text-align: center"><p>Usuario:</p>
                        <input name="usuario" type="text" style="text-align: center; font-size: 30px">
                    </div>
                    <br>
                    <br>
                    <br>
                    <div style="text-align: center"><p>Contraseña:</p>
                        <input name="clave" type="password" style="text-align: center; font-size: 30px">
                    </div>
                    <br>
                    <br>
                    <br>
                    <div style="text-align: center"><input name="ingresar" type="submit" class="enviar" value="INGRESAR"></div>
                </form>
            </div>

        </div>

        <a href="listarUsuarios">Usuarios</a>


        <footer>
            <!--Footer Creadores-->
            <div class="col-sm-12" id="footer">

            </div>        


        </footer>
    </body>
</html>