<!DOCTYPE html>
<html>
    <title>OnBook Atualizar</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./css/bootstrap.css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/index.css">



    <body class="bg-light">
        <%
            String id = request.getParameter("idBiblioteca");
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            String email = request.getParameter("email");
            String rua = request.getParameter("rua");
            String numEnd = request.getParameter("numEnd");
            String bairro = request.getParameter("bairro");
            String cidade = request.getParameter("cidade");
            String estado = request.getParameter("estado");
        %>
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
                    <a href="categorias.jsp" class="border-white list-group-item list-group-item-action">
                        <img src="img/categorias.png" style="width: 30px; height: 30px"><b> Categorias</b>
                    </a>
                    <a href="bibliotecas.jsp" class="border-white list-group-item list-group-item-action bg-light">
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
                    <h4 style="color: white">Atualizar Biblioteca</h4>
                </nav>

                <form method="POST" action="executa_alterarBiblioteca.jsp" >
                    <div class="container-fluid bg-light"  id="ContainerForm">
                        <div class="row">
                            <div class="col"></div>
                            <div class="col-4">
                                
                                <input type="hidden" name="idBiblioteca" value="<%=id%>">
                                <div class="form-group">
                                    <input type="text" name="nome" class="form-control" id="txtBibliotecao" placeholder="Nome da Biblioteca" value="<%=nome%>">
                                </div>

                                <div class="form-group">
                                    <input type="text" name="telefone" class="form-control" id="txtTelefone" placeholder="Telefone" value="<%=telefone%>">
                                </div>

                                <div class="form-group">
                                    <input type="text" name="email" class="form-control" id="txtEmail" placeholder="E-mail" value="<%=email%>">
                                </div>

                            </div>
                            <div class="col-4">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <input type="text" name="rua" class="form-control" id="txtRua" placeholder="Rua" value="<%=rua%>">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <input type="text" name="numEnd" class="form-control" id="txtNumero" placeholder="N°" value="<%=numEnd%>">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <input type="text" name="bairro" class="form-control" id="txtBairro" placeholder="Bairro" value="<%=bairro%>">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <input type="text" name="cidade" class="form-control" id="txtCidade" placeholder="Cidade" value="<%=cidade%>">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <input type="text" name="estado" class="form-control" id="txtEstado" placeholder="Estado" value="<%=estado%>">
                                </div>

                                <div class="form-group float-right">
                                    <button type="submit" id="btnCancelar" class="btn btn-danger">Cancelar</button>
                                    <button type="submit" id="btnSalvarBiblioteca" class="btn btn-success">Salvar</button>
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