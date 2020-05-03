<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="css/sidebar.css">
        <script src="bootstrap.min.js"></script>

        <title>On-Book - Bibliotecas</title>

    </head>
    <body>

        <!--Conteudo-->
        <div class="d-flex" id="wrapper">

            <!-- Sidebar -->
            <div class="bg-light border-right" id="sidebar-wrapper">
                <div class="sidebar-heading"><b>On-Book </b></div>
                <div class="list-group list-group-flush">
                    <a href="bibliotecas.jsp" class="list-group-item list-group-item-action bg-light">Bibliotecas</a>
                    <a href="#" class="list-group-item list-group-item-action bg-light">Empréstimos</a>
                    <a href="#" class="list-group-item list-group-item-action bg-light">Livros</a>
                    <a href="#" class="list-group-item list-group-item-action bg-light">Autor</a>
                    <a href="#" class="list-group-item list-group-item-action bg-light">Categoria</a>
                    <a href="#" class="list-group-item list-group-item-action bg-light">Meu perfil</a>

                </div>
            </div>
            <!-- Fim Sidebar -->

            <!-- Conteúdo da página -->
            <div id="page-content-wrapper">

                <!--Barra de Navegação-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <button class="btn btn-primary" id="btnMenuLateral">Menu Lateral</button>

                    <button class="navbar-toggler" type="button" >
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">

                        <b class="navbar-nav ml-auto mt-2 mt-lg-0">
                            On-Book
                        </b>
                    </div>
                </nav>
                <!--Fim Barra de Navegação-->


                <!--Conteúdo sobre as Bibliotecas-->
                <div class="container-fluid">

                    <h1 align="center">Bibliotecas</h1>

                    <!--Filtros-->
                    <div>

                        <form style="float:right;padding-top: 115px; " class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" aria-label="Pesquisar">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
                        </form>

                        <div class="form-group col-md-4">
                            <label>Estado</label>
                            <select id="idSelectEstado" class="form-control">
                                <option selected>Selecione...</option>
                                <option>...</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label>Cidade</label>
                            <select id="idSelectEstado" class="form-control">
                                <option selected>Selecione...</option>
                                <option>...</option>
                            </select>
                        </div>

                    </div>
                    <!--Fim Filtros-->

                    <div class="list-group">
                        <a href="bibliotecasDetalhes.jsp" class="list-group-item list-group-item-action flex-column align-items-start">
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1">Biblioteca Pública de Santa Catarina</h5>
                            </div>

                            <small>Localização: Endereço 1</small>
                        </a><br>
                        <a href="bibliotecasDetalhes.jsp" class="list-group-item list-group-item-action flex-column align-items-start">
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1">Biblioteca 2</h5>
                            </div>
                            <small>Localização: Endereço 2</small>
                        </a><br>
                        <a href="bibliotecasDetalhes.jsp" class="list-group-item list-group-item-action flex-column align-items-start">
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1">Biblioteca 3</h5>
                            </div>
                            <small>Localização: Endereço 3</small>
                        </a>
                    </div>
                </div>
                <!--Fim Conteúdo sobre as Bibliotecas-->
            </div>





            <!-- Fim do Conteúdo da Página -->

        </div>
        <!-- Fim Conteudo -->



        <!-- Bootstrap para JavaScript -->
        <script src="jquery/jquery.min.js"></script>
        <script src="js/boostrap/bootstrap.bundle.min.js"></script> 

        <!-- Menu lateral script -->
        <script>
            $("#btnMenuLateral").click(function (e) {
                e.preventDefault();
                $("#wrapper").toggleClass("toggled");
            });
        </script>

    </body>
</html>
