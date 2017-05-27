
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>      

        <%if (request.getAttribute("Exito") != null) {
                Usuario usr = (Usuario) request.getAttribute("Exito");
        %>            
        <h1>Bienvenido <%=usr.getUsuario()%> </h1>
        <%
            }
        %>

        <a href="index.jsp">SIGN OUT</a>

    </body>



</html>
