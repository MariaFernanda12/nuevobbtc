package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Modelo.Usuario;
import Util.Conexion;
import java.net.URISyntaxException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoUsuario {

    private Connection conexion;

    public DaoUsuario() throws URISyntaxException {

        this.conexion = Conexion.getConnection();

    }

    public Usuario validar(String usuario, String clave) {
        Usuario sol = null;
        try {

            String consulta = "select * from Usuario where identificador='"
                    + usuario + "' and clave='" + clave + "'";
            Statement statement
                    = this.conexion.createStatement();

            ResultSet resultado
                    = statement.executeQuery(consulta);
            if (resultado.next()) {
                sol = new Usuario();
                sol.setIdentificador(resultado.getString("identificador"));
                sol.setNombre(resultado.getString("nombreSol"));
                sol.setTipo(resultado.getString("tipo"));
                sol.setClave(resultado.getString("clave"));
                sol.setCursoArea(resultado.getString("cursoArea"));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return sol;
    }

    public boolean cambiarClave(String id, String claveNueva, String claveAntigua) {
        boolean resultado = false;
        try {
            String consulta = "UPDATE usuario SET clave ='" + claveNueva + "' "
                    + "where identificador='" + id + "' and clave='" + claveAntigua + "'";
            PreparedStatement statement = this.conexion.prepareStatement(consulta);
            resultado = statement.execute();

        } catch (SQLException ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }

        return resultado;
    }

}
