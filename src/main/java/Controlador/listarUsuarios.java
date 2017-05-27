package Controlador;

import DAO.DaoUsuario;
import Modelo.Usuario;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class listarUsuarios extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            ArrayList<Usuario> lista = null;
            //1. Crear instancia del DAO
            DaoUsuario daoU = new DaoUsuario();
            //Lista todos los elementos.
            lista = daoU.listarTodo();
            //2. Envio de los datos por el request.
            request.setAttribute("elementos", lista);
            //3. RequestDispacher
            RequestDispatcher rd = request.getRequestDispatcher("ListarUsuarios.jsp");
            rd.forward(request, response);
        } catch (URISyntaxException ex) {
            Logger.getLogger(listarUsuarios.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
