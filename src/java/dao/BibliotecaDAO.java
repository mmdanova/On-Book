/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Biblioteca;
import entidades.Categoria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Joao Vitor
 */
public class BibliotecaDAO {

    private Connection conn;
    private PreparedStatement pstm;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Biblioteca> listaBiblioteca = new ArrayList<>();

    public BibliotecaDAO() {
        conn = new ConnectionFactory().getConexao();
    }

    public ArrayList<Biblioteca> listarTodasBibliotecas() {
        String sql = "SELECT * FROM BIBLIOTECA";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);

            while (rs.next()) {
                Biblioteca biblioteca = new Biblioteca();
                biblioteca.setIdBiblioteca(rs.getInt("idBiblioteca"));
                biblioteca.setNome(rs.getString("nome"));
                biblioteca.setRua(rs.getString("rua"));
                biblioteca.setNumEnd(rs.getString("numEnd"));
                biblioteca.setBairro(rs.getString("bairro"));
                biblioteca.setCidade(rs.getString("cidade"));
                biblioteca.setEstado(rs.getString("estado"));
                biblioteca.setTelefone(rs.getString("telefone"));
                biblioteca.setEmail(rs.getString("email"));
                listaBiblioteca.add(biblioteca);
            }

        } catch (Exception e) {
            throw new RuntimeException("Erro ao listar biblioteca " + e);
        }
        return listaBiblioteca;
    }

    public String consultarBiblioteca(Integer idBiblioteca) {
        String sql = "SELECT * FROM BIBLIOTECA WHERE idBiblioteca = " + idBiblioteca;
        String nomeBiblioteca = "";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                nomeBiblioteca = rs.getString("nome");

            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao consultar biblioteca " + e);
        }

        return nomeBiblioteca;
    }

    public void inserir(Biblioteca biblioteca) {
        String sql = "INSERT INTO biblioteca(nome, email, telefone, rua, numEnd, bairro, cidade, estado) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, biblioteca.getNome());
            pstm.setString(2, biblioteca.getEmail());
            pstm.setString(3, biblioteca.getTelefone());
            pstm.setString(4, biblioteca.getRua());
            pstm.setString(5, biblioteca.getNumEnd());
            pstm.setString(6, biblioteca.getBairro());
            pstm.setString(7, biblioteca.getCidade());
            pstm.setString(8, biblioteca.getEstado());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao inserir biblioteca " + e);
        }
    }

    public void alterar(Biblioteca biblioteca) {
        String sql = "UPDATE BIBLIOTECA SET nome = ?, email = ?, telefone = ?, rua = ?, numEnd = ?, bairro = ?, cidade = ?, estado = ? WHERE idBiblioteca = ?";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, biblioteca.getNome());
            pstm.setString(2, biblioteca.getEmail());
            pstm.setString(3, biblioteca.getTelefone());
            pstm.setString(4, biblioteca.getRua());
            pstm.setString(5, biblioteca.getNumEnd());
            pstm.setString(6, biblioteca.getBairro());
            pstm.setString(7, biblioteca.getCidade());
            pstm.setString(8, biblioteca.getEstado());
            pstm.setInt(9, biblioteca.getIdBiblioteca());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao alterar biblioteca " + e);
        }
    }

    public void excluir(Integer idBiblioteca) {
        String sql = "DELETE FROM BIBLIOTECA WHERE idBiblioteca =" + idBiblioteca;
        try {
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception e) {
            throw new RuntimeException("Erro ao excluir biblioteca " + e);
        }
    }
}
