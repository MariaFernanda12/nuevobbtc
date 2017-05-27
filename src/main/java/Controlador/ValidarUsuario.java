package Controlador;

import DAO.DaoUsuario;
import Modelo.Usuario;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ValidarUsuario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        DaoUsuario daoUser = null;
        try {
            daoUser = new DaoUsuario();
        } catch (URISyntaxException ex) {
            Logger.getLogger(ValidarUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        Usuario user = new Usuario();
        user = daoUser.validar(usuario, clave);
       

        if (user != null) {
            request.setAttribute("Exito", user);
            RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("Failed", "NOK");
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
        HttpSession sesion = request.getSession();
        user = (Usuario) sesion.getAttribute("usuario");

        if (user == null) {
            user = new Usuario();
            user.setUsuario(usuario);
            user.setClave(clave);
            sesion.setAttribute("usuario", user);
        } else {
            user.setUsuario(usuario);
            user.setClave(clave);
            sesion.setAttribute("usuario", user);
        }

    }

}
