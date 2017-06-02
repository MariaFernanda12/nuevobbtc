package Controlador;

import DAO.DaoElementos;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Modificar extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String etiqueta = request.getParameter("etiqueta");
            String cantidad = request.getParameter("cantidad");
            String ubicacion = request.getParameter("ubicacion");
            DaoElementos daoElm = new DaoElementos();
            boolean resultado
                    = daoElm.modificarElemento(Integer.parseInt(etiqueta), Integer.parseInt(cantidad), ubicacion);
            if (resultado == false) {
                request.setAttribute("Modificar", "OK");
            } else {
                request.setAttribute("Modificar", "NOK");
            }

            RequestDispatcher rd = request.getRequestDispatcher("1.2.5-ModificarA.jsp");
            rd.forward(request, response);
        } catch (URISyntaxException ex) {
            Logger.getLogger(Modificar.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
