package dao;

import entidades.Autor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class AutorDAO {

    private Connection conn;
    private PreparedStatement pstm;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Autor> listaAutor = new ArrayList<>();

    public AutorDAO() {
        conn = new ConnectionFactory().getConexao();
    }

    public ArrayList<Autor> listarTodosAutores() {
        String sql = "SELECT * FROM AUTOR";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);

            while (rs.next()) {
                Autor autor = new Autor();
                autor.setIdAutor(rs.getInt("idAutor"));
                autor.setNome(rs.getString("nome"));
                listaAutor.add(autor);
            }

        } catch (Exception e) {
            throw new RuntimeException("Erro ao listar autor " + e);
        }
        return listaAutor;
    }

    public String consultarAutor(Integer idAutor) {
        String sql = "SELECT * FROM AUTOR WHERE idAutor = " + idAutor;
        String nomeAutor="";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                nomeAutor = rs.getString("nome");
            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao consultar autor " + e);
        }

        return nomeAutor;
    }

    public void inserir(Autor autor) {
        String sql = "INSERT INTO autor(nome) VALUES (?)";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, autor.getNome());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao inserir autor " + e);
        }
    }

    public void alterar(Autor autor) {
        String sql = "UPDATE AUTOR SET nome = ? WHERE idAutor = ?";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, autor.getNome());
            pstm.setInt(2, autor.getIdAutor());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao alterar autor " + e);
        }
    }

    public void excluir(Integer idAutor) {
        String sql = "DELETE FROM AUTOR WHERE idAutor =" + idAutor;
        try {
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception e) {
            throw new RuntimeException("Erro ao excluir autor " + e);
        }
    }
}
