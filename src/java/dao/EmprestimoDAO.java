package dao;

import entidades.Autor;
import entidades.Categoria;
import entidades.Referencia;
import entidades.Emprestimo;
import entidades.Biblioteca;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Date;
import java.text.SimpleDateFormat;

public class EmprestimoDAO {

    private Connection conn;
    private PreparedStatement pstm;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Emprestimo> listaEmprestimo = new ArrayList<>();
    private final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    public EmprestimoDAO() {
        conn = new ConnectionFactory().getConexao();
    }

    public ArrayList<Emprestimo> listarTodosEmprestimos() {
        String sql = "SELECT * FROM EMPRESTIMO emp INNER JOIN EMPRESTIMO_SITUACAO emps on emps.idSituacao = emp.idSituacao INNER JOIN REFERENCIA ref on ref.idReferencia = emp.idReferencia";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);

            while (rs.next()) {
                Emprestimo emprestimo = new Emprestimo();

                emprestimo.setIdEmprestimo(rs.getInt("emp.idEmprestimo"));
                emprestimo.setDataEntrega(rs.getDate("emp.dataEntrega"));
                emprestimo.setDataEntrega(rs.getDate("emp.dataInicioEmprestimo"));
                emprestimo.setDataEntrega(rs.getDate("emp.dataFimEmprestimo"));
                emprestimo.setSituacaoEmprestimo(rs.getInt("emp.idSituacao"));
                emprestimo.setSituacaoDescricao(rs.getString("emps.nome"));

                listaEmprestimo.add(emprestimo);
            }

        } catch (Exception e) {
            throw new RuntimeException("Erro ao listar emprestimo dao " + e);
        }
        return listaEmprestimo;
    }

    public String consultarTituloReferencia(Integer idRef) {
        String sql = "SELECT * FROM REFERENCIA WHERE idReferencia = " + idRef;
        String tituloRef = "";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                tituloRef = rs.getString("titulo");
            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao consultar titulo referencia " + e);
        }

        return tituloRef;
    }

    public Integer retornaIdReferenciaPorIdEmprestimo(Integer idEmprestimo) {
        String sql = "SELECT * FROM EMPRESTIMO WHERE idEmprestimo = " + idEmprestimo;
        Integer idRef = 0;
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                //Emprestimo e = new Emprestimo();
                idRef = rs.getInt("idReferencia");
            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao retornar id ref pelo id emprestimo" + e);
        }

        return idRef;
    }

    public Integer retornaIdAutorPorIdReferencia(Integer idRef) {
        String sql = "SELECT * FROM REFERENCIA WHERE idReferencia = " + idRef;
        Integer idAutor = 0;
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                idAutor = rs.getInt("idAutor");
            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao retornar id autor pelo id ref" + e);
        }

        return idAutor;
    }

    public String retornarNomeAutorPorIdAutor(Integer idAutor) {
        String sql = "SELECT * FROM AUTOR WHERE idAutor = " + idAutor;
        String nomeAutor = "";
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

    public Integer retornaIdCategoriaPorIdReferencia(Integer idRef) {
        String sql = "SELECT * FROM REFERENCIA WHERE idReferencia = " + idRef;
        Integer idCategoria = 0;
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                idCategoria = rs.getInt("idCategoria");
            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao retornar id autor pelo id ref" + e);
        }

        return idCategoria;
    }

    public String retornarNomeCategoriaPorIdCategoria(Integer idCateg) {
        String sql = "SELECT * FROM Categoria WHERE idCategoria = " + idCateg;
        String nomeCategoria = "";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                nomeCategoria = rs.getString("nome");
            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao retornar nome categoria por id categoria " + e);
        }

        return nomeCategoria;
    }

    public String retornarTituloPorIdRef(Integer idRef) {
        String sql = "SELECT * FROM REFERENCIA WHERE idReferencia = " + idRef;
        String idReferencia = "";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                idReferencia = rs.getString("titulo");
            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao retornar titulo por id ref " + e);
        }

        return idReferencia;
    }

    public Integer retornaIdBibliotecaPorIdReferencia(Integer idRef) {
        String sql = "SELECT * FROM REFERENCIA WHERE idReferencia = " + idRef;
        Integer idBiblioteca = 0;
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                idBiblioteca = rs.getInt("idBiblioteca");
            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao retornar idBiblioteca pelo id ref" + e);
        }

        return idBiblioteca;
    }

    public String retornarNomeBibliotecaPorIdBiblioteca(Integer idBibli) {
        String sql = "SELECT * FROM BIBLIOTECA WHERE idBiblioteca = " + idBibli;
        String nomeBiblioteca = "";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                nomeBiblioteca = rs.getString("nome");
            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao retornar nome biblioteca por id biblioteca " + e);
        }

        return nomeBiblioteca;
    }

    public ArrayList<Emprestimo> listarTodosEmprestimosEmAtraso() {
        String sql = "SELECT * FROM EMPRESTIMO emp INNER JOIN EMPRESTIMO_SITUACAO emps on emps.idSituacao = emp.idSituacao INNER JOIN REFERENCIA ref on ref.idReferencia = emp.idReferencia WHERE emp.idSituacao =1";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);

            while (rs.next()) {
                Emprestimo emprestimo = new Emprestimo();

                emprestimo.setIdEmprestimo(rs.getInt("emp.idEmprestimo"));
                emprestimo.setDataEntrega(rs.getDate("emp.dataEntrega"));
                emprestimo.setDataEntrega(rs.getDate("emp.dataInicioEmprestimo"));
                emprestimo.setDataEntrega(rs.getDate("emp.dataFimEmprestimo"));
                emprestimo.setSituacaoEmprestimo(rs.getInt("emp.idSituacao"));
                emprestimo.setSituacaoDescricao(rs.getString("emps.nome"));

                listaEmprestimo.add(emprestimo);
            }

        } catch (Exception e) {
            throw new RuntimeException("Erro ao listar emprestimo dao " + e);
        }
        return listaEmprestimo;
    }

    public ArrayList<Emprestimo> listarTodosEmprestimosPendentes() {
        String sql = "SELECT * FROM EMPRESTIMO emp INNER JOIN EMPRESTIMO_SITUACAO emps on emps.idSituacao = emp.idSituacao INNER JOIN REFERENCIA ref on ref.idReferencia = emp.idReferencia WHERE emp.idSituacao in(2,4)";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);

            while (rs.next()) {
                Emprestimo emprestimo = new Emprestimo();

                emprestimo.setIdEmprestimo(rs.getInt("emp.idEmprestimo"));
                emprestimo.setDataEntrega(rs.getDate("emp.dataEntrega"));
                emprestimo.setDataEntrega(rs.getDate("emp.dataInicioEmprestimo"));
                emprestimo.setDataEntrega(rs.getDate("emp.dataFimEmprestimo"));
                emprestimo.setSituacaoEmprestimo(rs.getInt("emp.idSituacao"));
                emprestimo.setSituacaoDescricao(rs.getString("emps.nome"));

                listaEmprestimo.add(emprestimo);
            }

        } catch (Exception e) {
            throw new RuntimeException("Erro ao listar emprestimo dao " + e);
        }
        return listaEmprestimo;
    }

    public ArrayList<Emprestimo> listarTodosEmprestimosFinalizados() {
        String sql = "SELECT * FROM EMPRESTIMO emp INNER JOIN EMPRESTIMO_SITUACAO emps on emps.idSituacao = emp.idSituacao INNER JOIN REFERENCIA ref on ref.idReferencia = emp.idReferencia WHERE emp.idSituacao =3";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);

            while (rs.next()) {
                Emprestimo emprestimo = new Emprestimo();

                emprestimo.setIdEmprestimo(rs.getInt("emp.idEmprestimo"));
                emprestimo.setDataEntrega(rs.getDate("emp.dataEntrega"));
                emprestimo.setDataEntrega(rs.getDate("emp.dataInicioEmprestimo"));
                emprestimo.setDataEntrega(rs.getDate("emp.dataFimEmprestimo"));
                emprestimo.setSituacaoEmprestimo(rs.getInt("emp.idSituacao"));
                emprestimo.setSituacaoDescricao(rs.getString("emps.nome"));

                listaEmprestimo.add(emprestimo);
            }

        } catch (Exception e) {
            throw new RuntimeException("Erro ao listar emprestimo dao " + e);
        }
        return listaEmprestimo;
    }

    public void inserir(Emprestimo emp) {
        String sql = "INSERT INTO emprestimo (dataInicioEmprestimo,dataFimEmprestimo,idReferencia,idSituacao) VALUES (?,?,?,?)";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, dateFormat.format(emp.getDataInicioEmprestimo()));
            pstm.setString(2, dateFormat.format(emp.getDataFimEmprestimo()));
            pstm.setInt(3, emp.getReferenciaId());
            pstm.setInt(4, emp.getSituacaoEmprestimo());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao inserir emprestimo dao " + e);

        }

    }

    public void alterar(Emprestimo emp, Integer idReferencia) {
        String sql = "UPDATE EMPRESTIMO SET dataEntrega= ?, dataInicioEmprestimo = ?, dataFimEmprestimo = ?, idReferencia = ?, idSituacao = ? WHERE idEmprestimo = ?";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, emp.getDataEntrega().toString());
            pstm.setString(2, emp.getDataInicioEmprestimo().toString());
            pstm.setString(3, emp.getDataFimEmprestimo().toString());
            pstm.setInt(4, idReferencia);
            pstm.setInt(5, emp.getSituacaoEmprestimo());
            pstm.setInt(6, emp.getIdEmprestimo());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao alterar emprestimo sql " + e);
        }
    }

    public void excluir(Integer idEmprestimo) {
        String sql = "DELETE FROM EMPRESTIMO WHERE idEmprestimo =" + idEmprestimo;
        try {
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception e) {
            throw new RuntimeException("Erro ao excluir emprestimo " + e);
        }
    }

    public Biblioteca retornaBibliotecaPeloId(Integer idBib) {
        String sql = "SELECT * FROM BIBLIOTECA WHERE idBiblioteca= " + idBib;
        Biblioteca biblioteca = new Biblioteca();
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                biblioteca.setIdBiblioteca(idBib);
                biblioteca.setNome(rs.getString("nome"));
                biblioteca.setEmail(rs.getString("email"));
                biblioteca.setTelefone(rs.getString("telefone"));
                biblioteca.setEstado(rs.getString("estado"));
                biblioteca.setCidade(rs.getString("cidade"));
                biblioteca.setBairro(rs.getString("bairro"));
                biblioteca.setRua(rs.getString("rua"));
                biblioteca.setNumEnd(rs.getString("numEnd"));

            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao retornar biblioteca por id biblioteca" + e);
        }
        return biblioteca;
    }

    public Emprestimo retornaEmprestimoPeloId(Integer idEmp) {
        String sql = "SELECT * FROM EMPRESTIMO WHERE idEmprestimo = " + idEmp;
        Emprestimo emprestimo = new Emprestimo();
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                emprestimo.setIdEmprestimo(idEmp);
                emprestimo.setDataInicioEmprestimo(rs.getDate("dataInicioEmprestimo"));
                emprestimo.setDataFimEmprestimo(rs.getDate("dataFimEmprestimo"));
                emprestimo.setDataEntrega(rs.getDate("dataFimEmprestimo"));
                //emprestimo.setDataRetirada(rs.getDate("dataRetirada"));
                emprestimo.setReferenciaId(rs.getInt("idReferencia"));

            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao retornar emprestimo por id emprestimo " + e);
        }
        return emprestimo;
    }

    public Autor retornaAutorPeloId(Integer idAutor) {
        String sql = "SELECT * FROM AUTOR WHERE idAutor = " + idAutor;
        Autor autor = new Autor();
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                autor.setIdAutor(idAutor);
                autor.setNome(rs.getString("nome"));

            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao retornar autor por id autor " + e);
        }
        return autor;
    }

    public Categoria retornaCategoriaPeloId(Integer idCategoria) {
        String sql = "SELECT * FROM CATEGORIA WHERE idCategoria = " + idCategoria;
        Categoria categoria = new Categoria();
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                categoria.setIdCategoria(idCategoria);
                categoria.setNome(rs.getString("nome"));

            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao retornar categoria por id categoria " + e);
        }
        return categoria;
    }

    public Referencia retornaReferenciaPeloId(Integer idRef) {
        String sql = "SELECT * FROM REFERENCIA WHERE idReferencia = " + idRef;
        Referencia referencia = new Referencia();
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                referencia.setIdReferencia(idRef);
                referencia.setTitulo(rs.getString("titulo"));
                referencia.setIsbn(rs.getString("isbn"));
                referencia.setVolume(rs.getString("volume"));
            }
        } catch (Exception e) {
            throw new RuntimeException("Erro ao retornar referencia por id referencia " + e);
        }
        return referencia;
    }

    public void alterarSituacaoEmprestimo(Integer idEmprestimo, Integer idSituacao) {
        String sql = "UPDATE EMPRESTIMO SET idSituacao = ? WHERE idEmprestimo = ?";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, idSituacao);
            pstm.setInt(2, idEmprestimo);
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao alterar situação emprestimo para finalizado dao " + e);
        }
    }

}
