package Controlador;

import DAO.DaoElementos;
import Modelo.Elemento;
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

public class BuscarElemento extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        /*Busqueda por Nombre*/
        try {
            String parametro = request.getParameter("Buscar");
            ArrayList<Elemento> lista = null;
            DaoElementos daoE = new DaoElementos();
            lista = daoE.buscarPorNombre(parametro);

            HttpSession sesion = request.getSession();
            Usuario usr = (Usuario) sesion.getAttribute("usuario");
            if (usr.getIdentificador().equals("administrador")) {
                if (lista != null) {
                    request.setAttribute("etiqueta2", lista);
                    RequestDispatcher rd = request.getRequestDispatcher("BuscarPorNombreA.jsp");
                    rd.forward(request, response);
                }
                request.setAttribute("etiqueta2", "NOK");
                RequestDispatcher rd = request.getRequestDispatcher("BuscarPorNombreA.jsp");
                rd.forward(request, response);
            } else {
                if (lista != null) {
                    request.setAttribute("etiqueta2", lista);
                    RequestDispatcher rd = request.getRequestDispatcher("BuscarPorNombreU.jsp");
                    rd.forward(request, response);
                }
                request.setAttribute("etiqueta2", "NOK");
                RequestDispatcher rd = request.getRequestDispatcher("BuscarPorNombreU.jsp");
                rd.forward(request, response);
            }
        } catch (URISyntaxException ex) {
            Logger.getLogger(BuscarElemento.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        /*Busqueda por Etiqueta*/
        try {

            String parametro = request.getParameter("Buscar");

            Elemento elm = new Elemento();

            DaoElementos daoE = new DaoElementos();

            elm = daoE.buscar(Integer.parseInt(parametro));

            HttpSession sesion = request.getSession();
            Usuario usr = (Usuario) sesion.getAttribute("usuario");
            if (usr.getIdentificador().equals("administrador")) {
                request.setAttribute("etiqueta", elm);
                RequestDispatcher rd = request.getRequestDispatcher("BuscarPorEtiquetaA.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("etiqueta", elm);
                RequestDispatcher rd = request.getRequestDispatcher("BuscarPorEtiquetaU.jsp");
                rd.forward(request, response);
            }
        } catch (URISyntaxException ex) {
            Logger.getLogger(BuscarElemento.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
