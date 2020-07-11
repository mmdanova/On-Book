package dao;

import entidades.Categoria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class CategoriaDAO {
    private Connection conn;
    private PreparedStatement pstm;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Categoria> listaCategoria = new ArrayList<>();

    public CategoriaDAO() {
        conn = new ConnectionFactory().getConexao();
    }

    public ArrayList<Categoria> listarTodasCategorias() {
        String sql = "SELECT * FROM CATEGORIA";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()) {
                Categoria categoria = new Categoria();
                categoria.setIdCategoria(rs.getInt("idCategoria"));
                categoria.setNome(rs.getString("nome"));
                listaCategoria.add(categoria);
            }

        } catch (Exception e) {
            throw new RuntimeException("Erro ao listar categoria " + e);
        }
        return listaCategoria;
    }

        public String consultarCategoria(Integer idCategoria) {
        String sql = "SELECT * FROM CATEGORIA WHERE idCategoria = " + idCategoria;
        String nomeCategoria="";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                nomeCategoria = rs.getString("nome");
            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao consultar categoria " + e);
        }

        return nomeCategoria;
    }
    
    public void inserir(Categoria categoria) {
        String sql = "INSERT INTO CATEGORIA(nome) VALUES (?)";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, categoria.getNome());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao inserir categoria sql " + e);
        }
    }

    public void alterar(Categoria categoria) {
        String sql = "UPDATE CATEGORIA SET nome = ? WHERE idCategoria = ?";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, categoria.getNome());
            pstm.setInt(2, categoria.getIdCategoria());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao alterar categoria " + e);
        }
    }

    public void excluir(Integer idCategoria) {
        String sql = "DELETE FROM CATEGORIA WHERE idCategoria =" + idCategoria;
        try {
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception e) {
            throw new RuntimeException("Erro ao excluir categoria " + e);
        }
    }
}
