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

public class ListarPorArea extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String Enciclopedia = request.getParameter("Enciclopedia");
            String Diccionarios = request.getParameter("Diccionarios");
            String Espanol = request.getParameter("Espanol");
            String Matematicas = request.getParameter("Matematicas");
            String Fisica = request.getParameter("Fisica");
            String Quimica = request.getParameter("Quimica");
            String Sociales = request.getParameter("Sociales");
            String Ingles = request.getParameter("Ingles");
            String Ciencias = request.getParameter("Ciencias");
            String Preescolar = request.getParameter("Preescolar");
            String Filosofia = request.getParameter("Filosofia");
            String Religion = request.getParameter("Religion");
            String Etica = request.getParameter("Etica");
            String Informatica = request.getParameter("Informatica");
            String Atlas = request.getParameter("Atlas");
            String Salud = request.getParameter("Salud");
            String Dibujo = request.getParameter("Dibujo");
            String Institucionales = request.getParameter("Institucionales");
            String MaterialDidactico = request.getParameter("Material Didactico");
            String Multimedia = request.getParameter("Multimedia");
            String Equipo = request.getParameter("Equipo");
            ArrayList<Elemento> lista = null;
            DaoElementos daoE = new DaoElementos();

            if (Enciclopedia != null) {
                lista = daoE.listarPorArea(Enciclopedia);
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
            }
            if (Diccionarios != null) {
                lista = daoE.listarPorArea(Diccionarios);
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
            }
            if (Espanol != null) {
                lista = daoE.listarPorArea("Español");
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
            }
            if (Matematicas != null) {
                lista = daoE.listarPorArea(Matematicas);
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
            }
            if (Fisica != null) {
                lista = daoE.listarPorArea(Fisica);
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
            }
            if (Quimica != null) {
                lista = daoE.listarPorArea(Quimica);
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
            }
            if (Sociales != null) {
                lista = daoE.listarPorArea(Sociales);
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
            }
            if (Ingles != null) {
                lista = daoE.listarPorArea(Ingles);
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
            }
            if (Ciencias != null) {
                lista = daoE.listarPorArea(Ciencias);
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
            }
            if (Preescolar != null) {
                lista = daoE.listarPorArea(Preescolar);
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
            }
            if (Filosofia != null) {
                lista = daoE.listarPorArea(Filosofia);
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
            }
            if (Religion != null) {
                lista = daoE.listarPorArea(Religion);
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
            }
            if (Etica != null) {
                lista = daoE.listarPorArea(Etica);
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
            }
            if (Informatica != null) {
                lista = daoE.listarPorArea(Informatica);
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
            }
            if (Atlas != null) {
                lista = daoE.listarPorArea(Atlas);
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
            }
            if (Salud != null) {
                lista = daoE.listarPorArea(Salud);
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
            }
            if (Dibujo != null) {
                lista = daoE.listarPorArea(Dibujo);
                request.setAttribute("Elemento", lista);
                RequestDispatcher rd = request.getRequestDispatcher("ListarElementosA.jsp");
                rd.forward(request, response);
            }
            if (Institucionales != null) {
                lista = daoE.listarPorArea(Institucionales);
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
            }
            if (MaterialDidactico != null) {
                lista = daoE.listarPorArea(MaterialDidactico);
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
            }
            if (Multimedia != null) {
                lista = daoE.listarPorArea(Multimedia);
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
            }
            if (Equipo != null) {
                lista = daoE.listarPorArea(Equipo);
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
            }
        } catch (URISyntaxException ex) {
            Logger.getLogger(ListarPorArea.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
