package Controlador;

import DAO.DaoElementos;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.Elemento;
import Modelo.Usuario;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

public class CrearListar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, InterruptedException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ArrayList<Elemento> lista = null;
            //1. Crear instancia del DAO
            DaoElementos daoE = new DaoElementos();
            //Lista todos los Elementos
            lista = daoE.listarTodo();
            //2. Envio de los datos por el request.
            HttpSession sesion = request.getSession();
            Usuario usr = (Usuario) sesion.getAttribute("usuario");
            if (usr.getIdentificador().equals("administrador")) {
                request.setAttribute("Elemento", lista);
                RequestDispatcher rd = request.getRequestDispatcher("ListarElementosA.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("Elemento", lista);
                RequestDispatcher rd = request.getRequestDispatcher("ListarElementosU.jsp");
                rd.forward(request, response);
            }

        } catch (URISyntaxException ex) {
            Logger.getLogger(CrearListar.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            //1.Captura de datos del formulario

            String etiqueta = request.getParameter("etiqueta");
            String nombre = request.getParameter("nombre");
            String cantidadDisponible = request.getParameter("cantidadDisponible");
            String ubicacion = request.getParameter("ubicacion");
            String propiedad = request.getParameter("propiedad");
            String responsable = request.getParameter("responsable");
            String area = request.getParameter("area");

            //3. Crear el DTO
            Elemento elm = new Elemento();
            elm.setEtiqueta(Integer.parseInt(etiqueta));
            elm.setNombre(nombre);
            elm.setCantidadDisponible(Integer.parseInt(cantidadDisponible));
            elm.setUbicacion(ubicacion);
            elm.setPropiedad(propiedad);
            elm.setResponsable(responsable);
            elm.setArea(area);

            //4. Enlazarme con el DAO.
            DaoElementos daoElm = new DaoElementos();
            boolean resultado = daoElm.insertar(elm);
            if (resultado == false) {
                request.setAttribute("insersion", "OK");
            } else {
                request.setAttribute("insersion", "NOK");
            }
            //5. RequestDispacher
            RequestDispatcher rd = request.getRequestDispatcher("IngresoElementoA.jsp");
            rd.forward(request, response);
        } catch (URISyntaxException ex) {
            Logger.getLogger(CrearListar.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
