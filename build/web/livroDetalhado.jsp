<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="dao.AutorDAO"%>
<%@page import="entidades.Autor"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="entidades.Categoria"%>
<%@page import="dao.BibliotecaDAO"%>
<%@page import="entidades.Biblioteca"%>
<%@page import="dao.ReferenciaDAO"%>
<%@page import="entidades.Referencia"%>
<!DOCTYPE html>
<html>
<title>OnBook Detalhe</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./css/bootstrap.css/bootstrap.min.css">
<link rel="stylesheet" href="./css/index.css">


  <body class="bg-light">

    <div class="d-flex" id="wrapper">

      <!-- Sidebar -->
      <div class="border-white bg-white" id="sidebar-wrapper">
        <h1 class="sidebar-heading text-center" id="logo">OnBook</h1>
        <div class="list-group list-group-flush">
          <a href="index.jsp" class="border-white list-group-item list-group-item-action bg-light">
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
          <a href="emprestimo.jsp" class="border-white list-group-item list-group-item-action">
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
          <h4 style="color: white">Referência Detalhada</h4>
          <a href="index.jsp"><img src="img/voltar.png" style="width: 30px; height: 30px; margin-right: 20px;"></a>
        </nav>

          <%
                                    String idReferencia = "";
                                    String titulo = "";
                                    String isbn = "";
                                    String volume = "";
                                    String idAutor = "";
                                    String idBiblioteca = "";
                                    String idCategoria = "";
                                    try {
                                        idReferencia = request.getParameter("idReferencia");
                                        titulo = request.getParameter("titulo");
                                        isbn = request.getParameter("isbn");
                                        volume = request.getParameter("volume");
                                        idAutor = request.getParameter("idAutor");
                                        idBiblioteca = request.getParameter("idBiblioteca");
                                        idCategoria = request.getParameter("idCategoria");
                                    } catch (NumberFormatException e) {
                                        throw new RuntimeException("Erro ao pegar parametros" + e);
                                    }
  
                                                  
                                  ReferenciaDAO referenciaDAO = new ReferenciaDAO();
                                  AutorDAO autorDAO = new AutorDAO();
                                  CategoriaDAO categoriaDAO = new CategoriaDAO();
                                  BibliotecaDAO bibliotecaDAO = new BibliotecaDAO();
                                %>
          
        <div class="container-fluid bg-light">
          <div class="row" id="ContainerForm">
            <div class="col">
              <!--<img src="img/teste.jpg">-->
            </div>
            <div class="col-8">

              <div class="card">
                <div class="card-body">
                  <h5 class="card-title" id="idNomeReferencia"><%=titulo%></h5>
                  <div>
                    <label id="idNomeAutorReferencia">Autor: <%=autorDAO.consultarAutor(Integer.parseInt(idAutor))%></label><br>
                    <label id="idCategoriaReferencia">Categoria: <%=categoriaDAO.consultarCategoria(Integer.parseInt(idCategoria))%></label><br>
                    <label id="idIsbnReferencia">ISBN: <%=isbn%></label><br>
                    <label id="idNomeBibliotecaREferencia"><%=bibliotecaDAO.consultarBiblioteca(Integer.parseInt(idBiblioteca))%></label>
                  </div>
                </div>
              </div>

              <div class="form-group float-right">
                <button type="submit" id="btnEmprestimo" class="btn btn-success" style="margin: 10px">Reservar</button>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
   
    <script type="text/javascript" src="./js/bootstrap.js/jquery-3.5.1.slim.min.js"></script>
    <script type="text/javascript" src="./js/bootstrap.js/bootstrap.min.js"></script>
    <script type="text/javascript" src="./css/bootstrap.css/bootstrap.min.js"></script>
    <script type="text/javascript" src="./css/index.js"></script>

  </body>
</html>