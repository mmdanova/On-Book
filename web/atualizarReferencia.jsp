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
    <title>OnBook Atualizar</title>
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
                    <h4 style="color: white">Atualizar Referência</h4>
                </nav>

                <div class="container-fluid bg-light">
                    <div class="row" id="ContainerForm">
                        <div class="col"></div>
                        <div class="col-6">

                            <form method="POST" action="executa_alterarReferencia.jsp">

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
                                %>
                                <input name="idReferencia" type="hidden" class="form-control" id="txtTitulo" placeholder="Titulo" value="<%=idReferencia%>">
                                <div class="form-group">
                                    <input name="titulo" type="text" class="form-control" id="txtTitulo" placeholder="Titulo" value="<%=titulo%>">
                                </div>

                                <div class="form-group">
                                    <input name="isbn" type="text" class="form-control" id="txtIsbn" placeholder="ISBN" value="<%=isbn%>">
                                </div>

                                <div class="form-group">
                                    <input name="volume" type="number" class="form-control" id="txtVolume" placeholder="Volume" value="<%=volume%>">
                                </div>


                                <div class="form-group">
                                    <select name="autorRef" class="form-control" id="txtAutor" value="autor">
                                        <option disabled>Autor</option>
                                        <%
                                            AutorDAO autorDAO = new AutorDAO();
                                        
                                            for(Autor a: autorDAO.listarTodosAutores()) {
                                            
                                                if(Integer.parseInt(idAutor) == a.getIdAutor()) {
                                                    out.print("<option selected value='"+a.getIdAutor()+"'>"+a.getNome()+"</option>");
                                                } else {
                                                    out.print("<option value='"+a.getIdAutor()+"'>"+a.getNome()+"</option>");
                                                }
                                            }
                                        %>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <select name="bibliotecaRef" class="form-control" id="txtBiblioteca" value="biblioteca">
                                        <option disabled >Bibliotecas</option>
                                        <%
                                              BibliotecaDAO bibliotecaDAO = new BibliotecaDAO();
                                        
                                                  for(Biblioteca b: bibliotecaDAO.listarTodasBibliotecas()) {
                                                      if(Integer.parseInt(idBiblioteca) == b.getIdBiblioteca()) {
                                                          out.print("<option selected value='"+b.getIdBiblioteca()+"'>"+b.getNome()+"</option>");
                                                      } else {
                                                          out.print("<option value='"+b.getIdBiblioteca()+"'>"+b.getNome()+"</option>");
                                                          }
                                                  }
                                        %>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <select name="categoriaRef" class="form-control" id="txtCategoria" value="categoria">
                                        <option disabled>Categoria</option>
                                        <%
                                            CategoriaDAO categoriaDAO = new CategoriaDAO();
                                        
                                            for(Categoria c: categoriaDAO.listarTodasCategorias()) {
                                                if(Integer.parseInt(idCategoria) == c.getIdCategoria()) {
                                                    out.print("<option selected value='"+c.getIdCategoria()+"'>"+c.getNome()+"</option>");
                                                } else {
                                                    out.print("<option value='"+c.getIdCategoria()+"'>"+c.getNome()+"</option>");
                                                }
                                            }
                                        %>
                                    </select>
                                </div>

                                <div class="form-group float-right">
                                    <button type="submit" id="btnCancelar" class="btn btn-danger" style="margin: 10px">Cancelar</button>
                                    <button type="submit" id="btnAtualizarLivro" class="btn btn-success" style="margin: 10px">Salvar</button>
                                </div>
                            </form>

                        </div>
                        <div class="col"></div>
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