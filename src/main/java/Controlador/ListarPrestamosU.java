
package Controlador;

import DAO.DaoPrestamo;
import Modelo.HistorialPrestamos;
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
import javax.servlet.http.HttpSession;


public class ListarPrestamosU extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try {
            ArrayList<HistorialPrestamos> lista = null;
            HttpSession sesion = request.getSession();
            DaoPrestamo daoPr = new DaoPrestamo();
            Usuario sol = (Usuario) sesion.getAttribute("usuario");
            String id = sol.getIdentificador();
            lista = daoPr.listarHistorialUsuario(id);
            request.setAttribute("Prestamo", lista);
            //3. RequestDispacher
            RequestDispatcher rd = request.getRequestDispatcher("2.3-HistorialPrestamosU.jsp");
            rd.forward(request, response);
        } catch (URISyntaxException ex) {
            Logger.getLogger(EstadoUsuarios.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

  

}
