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

public class BorrarElemento extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String parametro = request.getParameter("etiqueta");

        DaoElementos daoE;
        try {
            daoE = new DaoElementos();
            boolean resultado = daoE.borrarElemento(Integer.parseInt(parametro));
            if (resultado==false) {
                request.setAttribute("Borrar", "OK");
            }else{
                request.setAttribute("Borrar", "NOK");
            }
            
            
            RequestDispatcher rd = request.getRequestDispatcher("BorrarA.jsp");
            rd.forward(request, response);
        } catch (URISyntaxException ex) {
            Logger.getLogger(BorrarElemento.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
