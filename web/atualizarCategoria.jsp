<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>OnBook Categoria</title>
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
                <a href="autores.jsp" class="border-white list-group-item list-group-item-action">
                    <img src="img/autor.png" style="width: 30px; height: 30px"><b> Autores</b>
                </a>
                <a href="categorias.jsp" class="border-white list-group-item list-group-item-action bg-light">
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
                <h4 style="color: white">Atualizar Categoria</h4>
            </nav>

            <div class="container-fluid bg-light" id="ContainerForm">
                <div class="row" >

                    <div class="col"></div>
                    <div class="col-4" style="margin: 10px">
                        <%
                            String id = request.getParameter("idCategoria");
                            String nome = request.getParameter("nome");
                        %>
                        <form method="POST" action="executa_alterarCategoria.jsp">
                            <div class="form-group">
                                <label>Código:</label>
                                <input type="hidden" name="idCategoria" value="<%=id%>"><%=id%><br>
                            </div>

                            <div class="form-group">
                                <label>Nome da Categoria</label>
                                <input type="text" class="form-control" name="nome" value="<%=nome%>"><br>
                            </div>

                            <div class="form-group float-right">
                                <a onclick="history.go(-1);" id="btnCancelar" class="btn btn-danger" style="color:white;">Cancelar</a>
                                <input class="btn btn-success" type="submit" value="Salvar">
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