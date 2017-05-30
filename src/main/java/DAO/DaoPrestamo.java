package DAO;

import Modelo.HistorialPrestamos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Modelo.Prestamo;
import Util.Conexion;
import java.net.URISyntaxException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DaoPrestamo {

    private Connection conexion;

    public DaoPrestamo() throws URISyntaxException {
        this.conexion = Conexion.getConnection();

    }

    public boolean devolucionPrestamo(int etiqueta, int cantidad) {
        boolean resultado = false;
        try {
            //1.Establecer la consulta
            String consulta = "UPDATE inventario SET cantidadDisponible = cantidadDisponible+" + cantidad + " WHERE etiqueta=?";
            //2. Crear el PreparedStament
            PreparedStatement statement = this.conexion.prepareStatement(consulta);
            //-----------------------------------
            statement.setInt(1, etiqueta);
            //3. Hacer la ejecucion
            resultado = statement.execute();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return resultado;
    }

    public boolean cambiarEstado(String id, int etiqueta, int cantidad) {
        boolean resultado = false;
        try {
            //1.Establecer la consulta
            String consulta = "UPDATE prestamo SET estado='Terminado' WHERE identificadorSol=? and etiquetaInv=?";
            //2. Crear el PreparedStament
            PreparedStatement statement = this.conexion.prepareStatement(consulta);
            //-----------------------------------
            statement.setString(1, id);
            statement.setInt(2, etiqueta);
            //3. Hacer la ejecucion
            resultado = statement.execute();
            devolucionPrestamo(etiqueta, cantidad);

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return resultado;
    }

    public Prestamo validarPrestamo(int etiqueta, String id) {
        Prestamo pr = null;
        try {
            String consulta = "select * from prestamo where etiquetaInv=" + etiqueta + " and identificadorSol='" + id + "' and estado='Activo'";
            Statement statement
                    = this.conexion.createStatement();
            ResultSet resultado
                    = statement.executeQuery(consulta);
            if (resultado.next()) {
                pr = new Prestamo();
                pr.setEtiquetaInv(resultado.getInt("etiquetaInv"));
                pr.setIdentificadorSol(resultado.getString("identificadorSol"));
                pr.setFechaDev(resultado.getString("fechaDev"));
                pr.setFechaActual(resultado.getString("fechaActual"));
                pr.setCantidadPrestamo(resultado.getInt("cantidadPrestamo"));
                pr.setEstado(resultado.getString("estado"));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return pr;
    }

    public boolean nuevoPrestamo(Prestamo pr) {
        boolean resultado = false;

        try {

            String consulta = "insert into prestamo values(?,?,?,?,?,?)";
            PreparedStatement statement = this.conexion.prepareStatement(consulta);

            statement.setInt(1, pr.getEtiquetaInv());
            statement.setString(2, pr.getIdentificadorSol());
            statement.setString(3, pr.getFechaDev());
            statement.setString(4, pr.getFechaActual());
            statement.setInt(5, pr.getCantidadPrestamo());
            statement.setString(6, pr.getEstado());

            resultado = statement.execute();
            restarInventario(pr.getEtiquetaInv(), pr.getCantidadPrestamo());

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return resultado;
    }

    public boolean restarInventario(int etiqueta, int cantidad) {
        boolean resultado = false;
        try {

            String consulta = "UPDATE inventario SET cantidadDisponible = cantidadDisponible-" + cantidad + " WHERE etiqueta=?";

            PreparedStatement statement = this.conexion.prepareStatement(consulta);

            statement.setInt(1, etiqueta);

            resultado = statement.execute();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return resultado;
    }

    public ArrayList<HistorialPrestamos> listarHistorial() {
        //1.Consulta

        ArrayList<HistorialPrestamos> respuesta = new ArrayList();
        String consulta = "select usuario.nombreSol, usuario.cursoArea, inventario.nombre, prestamo.cantidadPrestamo,   prestamo.fechaActual, prestamo.fechaDev, prestamo.estado\n"
                + "from((inventario inner join prestamo on (inventario.etiqueta = prestamo.etiquetaInv))\n"
                + "inner join usuario on (usuario.identificador=prestamo.identificadorSol))";

        try {

            Statement statement = this.conexion.createStatement();

            ResultSet resultado
                    = statement.executeQuery(consulta);
            while (resultado.next()) {
                HistorialPrestamos pr = new HistorialPrestamos();

                pr.setNombreUsuario(resultado.getString("nombreSol"));
                pr.setCursoArea(resultado.getString("cursoArea"));
                pr.setNombreElemento(resultado.getString("nombre"));
                pr.setCantidadPrestamo(resultado.getInt("cantidadPrestamo"));
                pr.setFechaInicio(resultado.getString("fechaActual"));
                pr.setFechaDevolucion(resultado.getString("fechaDev"));
                pr.setEstadoPrestamo(resultado.getString("estado"));

                respuesta.add(pr);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return respuesta;
    }

    public ArrayList<HistorialPrestamos> listarUsuariosNoPazSalvo() {
        //1.Consulta

        ArrayList<HistorialPrestamos> respuesta = new ArrayList();
        String consulta = "select distinct usuario.nombreSol, usuario.cursoArea, inventario.nombre, prestamo.cantidadPrestamo, prestamo.fechaActual,"
                + " prestamo.fechaDev, prestamo.estado from((prestamo inner join usuario\n"
                + "on(prestamo.identificadorSol=usuario.identificador and prestamo.estado='Activo'))\n"
                + "inner join inventario on(inventario.etiqueta=prestamo.etiquetaInv))";

        try {

            Statement statement = this.conexion.createStatement();

            ResultSet resultado
                    = statement.executeQuery(consulta);
            while (resultado.next()) {
                HistorialPrestamos pr = new HistorialPrestamos();
                pr.setNombreUsuario(resultado.getString("nombreSol"));
                pr.setCursoArea(resultado.getString("cursoArea"));
                pr.setNombreElemento(resultado.getString("nombre"));
                pr.setCantidadPrestamo(resultado.getInt("cantidadPrestamo"));
                pr.setFechaInicio(resultado.getString("fechaActual"));
                pr.setFechaDevolucion(resultado.getString("fechaDev"));
                pr.setEstadoPrestamo(resultado.getString("estado"));

                respuesta.add(pr);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return respuesta;
    }

}
