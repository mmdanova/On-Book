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
                        <img src="img/emprestimo.png" style="width: 30px; height: 32px"><b> Empr�stimos</b>
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
                    <h4 style="color: white">Nova Biblioteca</h4>
                </nav>

                <div class="container-fluid bg-light"  id="ContainerForm">
                    <form method="POST" action="executa_inserirBiblioteca.jsp">
                        <div class="row">
                            <div class="col"></div>
                            <div class="col-4">

                                <div class="form-group">
                                    <input type="text" name="nome" class="form-control" id="txtBibliotecao" placeholder="Nome da Biblioteca">
                                </div>

                                <div class="form-group">
                                    <input type="text" name="telefone" class="form-control" id="txtTelefone" placeholder="Telefone">
                                </div>

                                <div class="form-group">
                                    <input type="text" name="email" class="form-control" id="txtEmail" placeholder="E-mail">
                                </div>

                            </div>
                            <div class="col-4">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <input type="text" name ="rua" class="form-control" id="txtRua" placeholder="Rua">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <input type="text" name="numEnd" class="form-control" id="txtNumero" placeholder="N�">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <input type="text" name="bairro" class="form-control" id="txtBairro" placeholder="Bairro">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <input type="text" name="cidade" class="form-control" id="txtCidade" placeholder="Cidade">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <input type="text" name="estado" class="form-control" id="txtEstado" placeholder="Estado">
                                </div>

                                <div class="form-group float-right">
                                    <input type="submit" id="btnCancelar" class="btn btn-danger" value="Cancelar">
                                    <input type="submit" id="btnSalvarBiblioteca" class="btn btn-success" value="Salvar">
                                </div>
                            </div>
                            <div class="col"></div>
                        </div>
                    </form>
                </div>
            </div>

        </div>

        <script type="text/javascript" src="./js/bootstrap.js/jquery-3.5.1.slim.min.js"></script>
        <script type="text/javascript" src="./js/bootstrap.js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./css/bootstrap.css/bootstrap.min.js"></script>
        <script type="text/javascript" src="./css/index.js"></script>

    </body>
</html>