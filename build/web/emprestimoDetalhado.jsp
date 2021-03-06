<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dao.AutorDAO"%>
<%@page import="entidades.Autor"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="entidades.Categoria"%>
<%@page import="dao.BibliotecaDAO"%>
<%@page import="entidades.Biblioteca"%>
<%@page import="dao.ReferenciaDAO"%>
<%@page import="entidades.Referencia"%>
<%@page import="dao.EmprestimoDAO"%>
<%@page import="entidades.Emprestimo"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <title>OnBook Detalhe</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./css/bootstrap.css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/index.css">


    <body class="bg-light">

        <div class="d-flex" id="wrapper">
            <%
              
                try {
                          String idBiblioteca = request.getParameter("idBiblioteca");
                          String idEmprestimo = request.getParameter("idEmprestimo");
                          String idCategoria = request.getParameter("idCategoria");
                          String idAutor = request.getParameter("idAutor");
                          String idReferencia = request.getParameter("idReferencia");
                          String situacaoDescricao = request.getParameter("situacaoDescricao");
                          String idSituacaoEmprestimo = request.getParameter("idSituacaoEmprestimo");
                                                  
                                              ReferenciaDAO referenciaDAO = new ReferenciaDAO();
                                              AutorDAO autorDAO = new AutorDAO();
                                              CategoriaDAO categoriaDAO = new CategoriaDAO();
                                              BibliotecaDAO bibliotecaDAO = new BibliotecaDAO();
                                              EmprestimoDAO emprestimoDAO = new EmprestimoDAO();
                                              Autor a = new Autor();
                                              Biblioteca b = new Biblioteca();
                                              Categoria c = new Categoria();
                                              Emprestimo e = new Emprestimo();
                                              Referencia r = new Referencia();
                                              a = emprestimoDAO.retornaAutorPeloId(Integer.parseInt(idAutor));
                                              b = emprestimoDAO.retornaBibliotecaPeloId(Integer.parseInt(idBiblioteca));
                                              c = emprestimoDAO.retornaCategoriaPeloId(Integer.parseInt(idCategoria));
                                              e = emprestimoDAO.retornaEmprestimoPeloId(Integer.parseInt(idEmprestimo));
                                              r = emprestimoDAO.retornaReferenciaPeloId(Integer.parseInt(idReferencia));
                                                                      
                           SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");

                           String dataInicioEmprestimo = null;
                           String dataFimEmprestimo = null;

                           dataInicioEmprestimo = formato.format(e.getDataInicioEmprestimo());
                           dataFimEmprestimo = formato.format(e.getDataFimEmprestimo());
            %>
            <!-- Sidebar -->
            <div class="border-white bg-white" id="sidebar-wrapper">
                <h1 class="sidebar-heading text-center" id="logo">OnBook</h1>
                <div class="list-group list-group-flush">
                    <a href="index.jsp" class="border-white list-group-item list-group-item-action">
                        <img src="img/livro.png" style="width: 30px; height: 30px"><b> Livros</b>
                    </a>
                    <a href="autores.jsp" class="border-white list-group-item list-group-item-action">
                        <img src="img/autor.png" style="width: 30px; height: 30px"><b> Autores</b>
                    </a>
                    <a href="categorias.jsp" class="border-white list-group-item list-group-item-action">
                        <img src="img/categorias.png" style="width: 30px; height: 30px"><b> Categorias</b>
                    </a>
                    <a href="bibliotecas.jsp" class="border-white list-group-item list-group-item-action">
                        <img src="img/biblioteca.png" style="width: 30px; height: 30px"><b> Bibliotecas</b>
                    </a>
                    <a href="emprestimo.jsp" class="border-white list-group-item list-group-item-action bg-light">
                        <img src="img/emprestimo.png" style="width: 30px; height: 32px"><b> Empréstimos</b>
                    </a>
                    <a href="perfil.jsp" class="border-white list-group-item list-group-item-action">
                        <img src="img/perfil.png" style="width: 30px; height: 30px"><b> Meu Perfil</b>
                    </a>
                </div>
            </div>
            <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
            <div id="page-content-wrapper">

                <nav class="navbar bg-dark">
                    <h4 style="color: white">Empréstimo Detalhado</h4>
                    <a href="emprestimo.jsp"><img src="img/voltar.png" style="width: 30px; height: 30px; margin-right: 20px;"></a>
                </nav>

                <div class="container-fluid bg-light">
                    <div class="row" id="ContainerForm">

                        <div class="card" style="margin: 20px">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <h5 class="card-title" id="tituloEmprestimo"><%=r.getTitulo()%></h5>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label id="autorEmprestimo">Autor: <%=a.getNome()%></label><br>
                                        <label id="categoriaEmprestimo">Categoria: <%=c.getNome()%></label><br>
                                        <label id="isbnEmprestimo">ISBN: <%=r.getIsbn()%></label><br>
                                        <label id="bibliotecaEmprestimo"><%=b.getNome()%></label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card" style="margin: 20px">
                            <div class="card-body">
                                <div class="row">


                                    <div class="col">
                                        <label><b>Iniciado Em: </b></label><label id="idDataInicio"><%=dataInicioEmprestimo%></label><br>
                                        <!--<label><b>Retirado Em: </b></label><label id="idDataRetirada"><%//=e.getDataRetirada()%></label><br>-->
                                        <label><b>Data Final: </b></label><label id="idDataFinal"><%=dataFimEmprestimo%></label><br>
                                        <div class="row">
                                            <div class="col">
                                                <label><b>Biblioteca: </b></label><p id="idNomeBiblioteca"> <%=b.getNome()%></p>
                                                <label><b>Localização: </b></label><p id="idLocalizacao"><% out.print(b.getRua()+" - "+b.getNumEnd()+", "+b.getCidade()+" - "+b.getEstado());%></p>                      
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <label><b>Status: </b></label><label id="idStatusEmprestimo"><%=situacaoDescricao%></label>
                                    </div>

                                </div>
                                <div class="form-group float-right">
                                    <%
                                        if(Integer.parseInt(idSituacaoEmprestimo) != 3) {
                                            out.print("<a href='executa_alterarSituacaoEmprestimo.jsp?idEmprestimo="+idEmprestimo+"&idSituacao="+3+"' id='btnEmprestimo' class='btn btn-primary' style='margin: 20px; color: white; '>Finalizar Empréstimo</a>");
                                            if(Integer.parseInt(idSituacaoEmprestimo) == 4) {
                                                out.print("<a href='executa_alterarSituacaoEmprestimo.jsp?idEmprestimo="+idEmprestimo+"&idSituacao="+2+"' id='btnEmprestimo' class='btn btn-success' style='margin: 20px; color: white; '>Confirmar Empréstimo</a>");
                                            } else {
                                                
                                            }
                                        } else {
                                            out.print("<a href='#' id='btnEmprestimo' class='btn btn-primary' style='margin: 20px; color: white; pointer-events: none; cursor: default; opacity: 0.6; '>Empréstimo Finalizado</a>");
                                        }
                                    %>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%
} catch (Exception e) {
throw new RuntimeException("Erro ao listar emprestimos detalhado jsp " + e);
}

            %> 

            <script type="text/javascript" src="./js/bootstrap.js/jquery-3.5.1.slim.min.js"></script>
            <script type="text/javascript" src="./js/bootstrap.js/bootstrap.min.js"></script>
            <script type="text/javascript" src="./css/bootstrap.css/bootstrap.min.js"></script>
            <script type="text/javascript" src="./css/index.js"></script>

    </body>
</html>