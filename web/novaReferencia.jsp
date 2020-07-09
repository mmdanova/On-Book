<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="dao.AutorDAO"%>
<%@page import="entidades.Autor"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="entidades.Categoria"%>
<%@page import="dao.BibliotecaDAO"%>
<%@page import="entidades.Biblioteca"%>
<!DOCTYPE html>
<html>
    <title>OnBook Cadastro</title>
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
                    <h4 style="color: white">Nova Referência</h4>
                </nav>
                <form method="POST" action="executa_inserirReferencia.jsp">
                    <div class="container-fluid bg-light"  id="ContainerForm">
                        <div class="row">
                            <div class="col"></div>
                            <div class="col-6">
                                
                                <div class="form-group">
                                    <input name="titulo" type="text" class="form-control" id="txtTitulo" placeholder="Titulo">
                                </div>

                                <div class="form-group">
                                    <input name="isbn" type="text" class="form-control" id="txtIsbn" placeholder="ISBN">
                                </div>

                                <div class="form-group">
                                    <input name="volume" type="number" class="form-control" id="txtVolume" placeholder="Volume">
                                </div>
                                
<!--                                <div class="form-group">
                                    <input name="imagem" type="file" class="form-control" id="imgImagem" placeholder="Imagem">
                                </div>-->

                                <div class="form-group">
                                    <select name="autorRef" class="form-control" id="txtAutor" value="autor">
                                        <option value="0" disabled selected>Autor</option>
                                        <%
                                        AutorDAO autorDAO = new AutorDAO();
                                        
                                        for(Autor a: autorDAO.listarTodosAutores()) {
                                            out.print("<option value='"+a.getIdAutor()+"'>"+a.getNome()+"</option>");
                                        }
                                        
                                        %>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <select name="bibliotecaRef" class="form-control" id="txtBiblioteca" value="biblioteca">
                                        <option value="0" disabled selected>Biblioteca</option>
                                        <%
                                            BibliotecaDAO bibliotecaDAO = new BibliotecaDAO();
                                        
                                            for(Biblioteca b: bibliotecaDAO.listarTodasBibliotecas()) {
                                                out.print("<option value='"+b.getIdBiblioteca()+"'>"+b.getNome()+"</option>");
                                            }
                                        %>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <select name="categoriaRef" class="form-control" id="txtCategoria" value="categoria">
                                        <option disabled selected>Categoria</option>
                                        <%
                                            CategoriaDAO categoriaDAO = new CategoriaDAO();
                                        
                                            for(Categoria c: categoriaDAO.listarTodasCategorias()) {
                                                out.print("<option value='"+c.getIdCategoria()+"'>"+c.getNome()+"</option>");
                                            }
                                        %>
                                    </select>
                                </div>

                                <div class="form-group float-right">
                                    <a onclick="history.go(-1);" id="btnCancelar" class="btn btn-danger" style="color:white;">Cancelar</a>
                                    <button type="submit" id="btnSalvarLivro" class="btn btn-success">Salvar</button>
                                </div>
                            </div>
                            <div class="col"></div>
                        </div>
                    </div>
                </form>
            </div>

        </div>

        <script type="text/javascript" src="./js/bootstrap.js/jquery-3.5.1.slim.min.js"></script>
        <script type="text/javascript" src="./js/bootstrap.js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./css/bootstrap.css/bootstrap.min.js"></script>
        <script type="text/javascript" src="./css/index.js"></script>

    </body>
</html>