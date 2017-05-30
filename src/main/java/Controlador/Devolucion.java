package Controlador;

import DAO.DaoPrestamo;
import Modelo.Prestamo;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Devolucion extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String etiqueta = request.getParameter("etiqueta");
            String id = request.getParameter("id");
            
            DaoPrestamo daoPr = new DaoPrestamo();
            Prestamo pr = daoPr.validarPrestamo(Integer.parseInt(etiqueta), id);
            if (pr != null) {
                daoPr.cambiarEstado(pr.getIdentificadorSol(), pr.getEtiquetaInv(), pr.getCantidadPrestamo());
                request.setAttribute("Devolucion", "OK");
                RequestDispatcher rd = request.getRequestDispatcher("DevolucionA.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("Devolucion", "NOK");
                RequestDispatcher rd = request.getRequestDispatcher("DevolucionA.jsp");
                rd.forward(request, response);
            }
        } catch (URISyntaxException ex) {
            Logger.getLogger(Devolucion.class.getName()).log(Level.SEVERE, null, ex);
        }

    }


}
