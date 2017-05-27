package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Modelo.Usuario;
import Util.Conexion;
import java.net.URISyntaxException;
import java.util.ArrayList;

public class DaoUsuario {

    private Connection conexion;

    public DaoUsuario() throws URISyntaxException {

        this.conexion = Conexion.getConnection();

    }

    public Usuario validar(String usuario, String clave) {
        Usuario user = null;
        try {

            String consulta = "select * from usuario where usuario='"
                    + usuario + "' and clave='" + clave + "'";
            Statement statement
                    = this.conexion.createStatement();

            ResultSet resultado
                    = statement.executeQuery(consulta);
            if (resultado.next()) {
                user = new Usuario();
                user.setUsuario(resultado.getString("usuario"));
                user.setClave(resultado.getString("clave"));

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return user;
    }

    public ArrayList<Usuario> listarTodo() {
        //1.Consulta

        ArrayList<Usuario> respuesta = new ArrayList();
        String consulta = "select * from usuario";
        try {
            //Statement
            Statement statement
                    = this.conexion.createStatement();
            //Ejecucion
            ResultSet resultado
                    = statement.executeQuery(consulta);
            //----------------------------
            //Recorrido sobre el resultado
            while (resultado.next()) {
                Usuario usr = new Usuario();
                usr.setUsuario(resultado.getString("usuario"));
                usr.setClave(resultado.getString("clave"));

                respuesta.add(usr);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return respuesta;

    }

}
