package entidades;

import java.util.Date;


public class Emprestimo {

    private Integer idEmprestimo;
    private Date dataEntrega;
    private Date dataInicioEmprestimo;
    private Date dataFimEmprestimo;
    private Double valorEmprestimo;
    private Integer situacaoEmprestimo;
    private String situacaoDescricao;
    private Referencia referencia;
    private Integer idReferencia;
    private Integer autorId;
    private Integer bibliotecaId;
    private Integer categoriaId;
    private Integer referenciaId;
    
    public Integer getIdEmprestimo() {
        return idEmprestimo;
       
    }

    public void setIdEmprestimo(Integer idEmprestimo) {
        this.idEmprestimo = idEmprestimo;
    }

    public Date getDataEntrega() {
        return dataEntrega;
    }

    public void setDataEntrega(Date dataEntrega) {
        this.dataEntrega = dataEntrega;
    }

    public Date getDataInicioEmprestimo() {
        return dataInicioEmprestimo;
    }

    public void setDataInicioEmprestimo(Date dataInicioEmprestimo) {
        this.dataInicioEmprestimo = dataInicioEmprestimo;
    }

    public Date getDataFimEmprestimo() {
        return dataFimEmprestimo;
    }

    public void setDataFimEmprestimo(Date dataFimEmprestimo) {
        this.dataFimEmprestimo = dataFimEmprestimo;
    }

    public Double getValorEmprestimo() {
        return valorEmprestimo;
    }

    public void setValorEmprestimo(Double valorEmprestimo) {
        this.valorEmprestimo = valorEmprestimo;
    }

    public Integer getSituacaoEmprestimo() {
        return situacaoEmprestimo;
    }

    public void setSituacaoEmprestimo(Integer situacaoEmprestimo) {
        this.situacaoEmprestimo = situacaoEmprestimo;
    }

    public String getSituacaoDescricao() {
        return situacaoDescricao;
    }

    public void setSituacaoDescricao(String situacaoDescricao) {
        this.situacaoDescricao = situacaoDescricao;
    }

    public Integer getIdReferencia() {
        return idReferencia;
    }

    public void setIdReferencia(Integer idReferencia) {
        this.idReferencia = idReferencia;
    }

    public Referencia getReferencia() {
        return referencia;
    }

    public void setReferencia(Referencia referencia) {
        this.referencia = referencia;
    }

    public Integer getAutorId() {
        return autorId;
    }

    public void setAutorId(Integer autorId) {
        this.autorId = autorId;
    }

    public Integer getBibliotecaId() {
        return bibliotecaId;
    }

    public void setBibliotecaId(Integer bibliotecaId) {
        this.bibliotecaId = bibliotecaId;
    }

    public Integer getCategoriaId() {
        return categoriaId;
    }

    public void setCategoriaId(Integer categoriaId) {
        this.categoriaId = categoriaId;
    }

    public Integer getReferenciaId() {
        return referenciaId;
    }

    public void setReferenciaId(Integer referenciaId) {
        this.referenciaId = referenciaId;
    }

}
