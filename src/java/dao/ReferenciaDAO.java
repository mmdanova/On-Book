package dao;

import entidades.Autor;
import entidades.Referencia;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ReferenciaDAO {

    private Connection conn;
    private PreparedStatement pstm;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Referencia> listaReferencia = new ArrayList<>();

    public ReferenciaDAO() {
        conn = new ConnectionFactory().getConexao();
    }

    public ArrayList<Referencia> listarTodasReferencias() {
        String sql = "SELECT * FROM REFERENCIA ref inner join autor aut on aut.idAutor = ref.idAutor inner join categoria cat on cat.idCategoria = ref.idCategoria inner join biblioteca bib on bib.idBiblioteca = ref.idBiblioteca";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while (rs.next()) {
                Referencia referencia = new Referencia();
               
                referencia.setIdReferencia(rs.getInt("ref.idReferencia"));
                referencia.setTitulo(rs.getString("ref.titulo"));
                referencia.setIsbn(rs.getString("ref.isbn"));
                referencia.setVolume(rs.getString("ref.volume"));
                //referencia.setImagem(rs.getString("ref.imagem"));
                referencia.setAutorId(rs.getInt("aut.idAutor"));
                referencia.setBibliotecaId(rs.getInt("bib.idBiblioteca"));
                referencia.setCategoriaId(rs.getInt("cat.idCategoria"));
                
                listaReferencia.add(referencia);
            }

        } catch (Exception e) {
            throw new RuntimeException("Erro ao listar referencia dao " + e);
        }
        return listaReferencia;
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
    
    public void inserir(Referencia referencia, Integer idAutor, Integer idCategoria, Integer idBiblioteca) {
        //String sql = "INSERT INTO REFERENCIA(titulo,isbn,volume,imagem,idAutor,idCategoria,idBiblioteca) VALUES (?,?,?,?,?,?,?)";
        String sql = "INSERT INTO REFERENCIA(titulo,isbn,volume,idAutor,idCategoria,idBiblioteca) VALUES (?,?,?,?,?,?)";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, referencia.getTitulo());
            pstm.setString(2, referencia.getIsbn());
            pstm.setString(3, referencia.getVolume());
            //pstm.setString(4, referencia.getImagem());
            pstm.setInt(4, idAutor);
            pstm.setInt(5, idCategoria);
            pstm.setInt(6, idBiblioteca);
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao inserir REFERENCIA " + e);
        }
    }

    public void alterar(Referencia ref, Integer idAutor, Integer idCategoria, Integer idBiblioteca) {
        String sql = "UPDATE REFERENCIA SET titulo= ?, isbn = ?, volume = ?, idAutor = ?, idCategoria = ?, idBiblioteca = ? WHERE idReferencia = ?";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, ref.getTitulo());
            pstm.setString(2, ref.getIsbn());
            pstm.setString(3, ref.getVolume());
            pstm.setInt(4, idAutor);
            pstm.setInt(5, idCategoria);
            pstm.setInt(6, idBiblioteca);
            pstm.setInt(7, ref.getIdReferencia());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao alterar referencia sql " + e);
        }
    }

    public void excluir(Integer idReferencia) {
        String sql = "DELETE FROM REFERENCIA WHERE idReferencia =" + idReferencia;
        try {
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception e) {
            throw new RuntimeException("Erro ao excluir idReferencia " + e);
        }
    }
}
