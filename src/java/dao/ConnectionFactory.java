/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Joao Vitor
 */
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
