package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
    
    public Connection getConexao() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/onbook","root","");
        } catch (Exception e) {
            throw new RuntimeException("Erro ao realizar Conexão com banco de dados"+e);
        }
       
    }
}
