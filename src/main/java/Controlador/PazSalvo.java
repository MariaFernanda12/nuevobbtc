package Controlador;

import DAO.DaoPrestamo;
import Modelo.HistorialPrestamos;
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

public class PazSalvo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ArrayList<HistorialPrestamos> lista = null;
            DaoPrestamo daoPr = new DaoPrestamo();
            lista = daoPr.listarUsuariosNoPazSalvo();
            request.setAttribute("Paz", lista);
            RequestDispatcher rd = request.getRequestDispatcher("PazSalvoA.jsp");
            rd.forward(request, response);
        } catch (URISyntaxException ex) {
            Logger.getLogger(PazSalvo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
