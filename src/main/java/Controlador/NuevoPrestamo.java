package Controlador;

import DAO.DaoPrestamo;
import Modelo.Prestamo;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NuevoPrestamo extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Calendar fecha = new GregorianCalendar();
            int anio = fecha.get(Calendar.YEAR);
            int mes = fecha.get(Calendar.MONTH);
            int dia = fecha.get(Calendar.DAY_OF_MONTH);
            String fechaAct = String.valueOf(dia) + "-" + String.valueOf(mes) + "-" + String.valueOf(anio);

            String id = request.getParameter("id");
            String etiqueta = request.getParameter("etiqueta");
            String cantidad = request.getParameter("cantidad");
            String fechaDev = request.getParameter("fechaDev");
            String[] arr = fechaDev.split("-");
            String fechaDevolucion = arr[2] + "-" + arr[1] + "-" + arr[0];
            Prestamo pr = new Prestamo();
            pr.setEtiquetaInv(Integer.parseInt(etiqueta));
            pr.setIdentificadorSol(id);
            pr.setFechaDev(fechaDevolucion);
            pr.setCantidadPrestamo(Integer.parseInt(cantidad));
            pr.setEstado("Activo");
            pr.setFechaActual(fechaAct);

            DaoPrestamo daoPr = new DaoPrestamo();

            boolean resultado = daoPr.nuevoPrestamo(pr);
            if (resultado == false) {
                request.setAttribute("Prestamo", "OK");
            } else {
                request.setAttribute("Prestamo", "NOK");
            }
            RequestDispatcher rd = request.getRequestDispatcher("NuevoPrestamoA.jsp");
            rd.forward(request, response);
        } catch (URISyntaxException ex) {
            Logger.getLogger(NuevoPrestamo.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
