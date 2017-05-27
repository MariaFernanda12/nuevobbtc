<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Usuario"%>
<%@page import="Controlador.listarUsuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Listado de Usuarios</title>                
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">      
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>    
    <body>



        <table border="2">
            <tr>
                <th>Usuario</th>                                               
                <th>Clave</th>                    
       

            </tr>
            <%  if (request.getAttribute("elementos") != null) {
                    ArrayList<Usuario> usr = (ArrayList<Usuario>) request.getAttribute("elementos");
                    for (Usuario usuario : usr) {
            %>            
            <tr>    
          
                <td> <%=usuario.getUsuario()%></td>                
                <td><%=usuario.getClave()%></td> 
                               
            </tr>

            <%
                    }
                }
            %>

        </table>

    </body>
</html>