<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="dao.AutorDAO"%>
<%@page import="entidades.Autor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>OnBook Autor</title>
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
                    <a href="index.jsp" class="border-white list-group-item list-group-item-action">
                        <img src="img/livro.png" style="width: 30px; height: 30px"><b> Livros</b>
                    </a>
                    <a href="autores.jsp" class="border-white list-group-item list-group-item-action bg-light">
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
            </div>      <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
            <div id="page-content-wrapper">

                <nav class="navbar bg-dark">
                    <h4 style="color: white">Autores Cadastrados</h4>
                </nav>

                <div class="container-fluid bg-light" id="ContainerForm">
                    <div class="row" >

                        <div class="col"></div>
                        <div class="col-4" style="margin: 10px">
                            <form method="POST" action="executa_inserirAutor.jsp">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="txtAutores" name="nome" placeholder="Nome do Autor">
                                </div>

                                <div class="form-group float-right">
                                    <button type="submit" id="btnSalvarAutor" class="btn btn-success">Salvar</button>
                                </div>
                            </form>
                        </div>
                        <div class="col-4">
                            <h5>Autores</h5>
                            <div  id="autores" style="margin: 10px">
                                <%
                                            try {
                                                out.print("<table class='table table-hover'>");
                                                out.print("<tbody>");
                                                AutorDAO autorDAO = new AutorDAO();

                                                ArrayList<Autor> arrayAutor = autorDAO.listarTodosAutores();
                                                for (int i = 0; i < arrayAutor.size(); i++) {
                                                    out.print("<tr>");
                                                    //out.print("<td>" + arrayProduto.get(i).getId() + "</td>");
                                                    out.print("<td>" + arrayAutor.get(i).getNome() + "</td>");
                                                    out.print("<td><a href='atualizarAutor.jsp?idAutor=" + arrayAutor.get(i).getIdAutor() + "&nome=" + arrayAutor.get(i).getNome() + "'><img src='img/editar.png' style='width: 25px; height: 25px'></a></td>");
                                                    out.print("<td><a href='executa_excluirAutor.jsp?idAutor=" + arrayAutor.get(i).getIdAutor() + "'><img src='img/excluir.png' style='width: 25px; height: 25px'></a></td>");
                                                    out.print("</tr>");
                                                }
                                                out.print("</tbody>");
                                                out.print("</table>");
                                            } catch (Exception e) {
                                                throw new RuntimeException("Erro ao listar produtos " + e);
                                            }

                                %>
                            </div>
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