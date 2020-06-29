<!DOCTYPE html>
<html>
<title>OnBook Inicial</title>
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
          <h4 style="color: white">Refer�ncias Cadastradas</h4>
          <a href="novaReferencia.html"><img src="img/adicionar.png" style="width: 30px; height: 30px; margin-right: 20px;"></a>
        </nav>

        <div class="container-fluid bg-light" id="ContainerList">
          <div class="row" >

            <div class="card mb-6" style="width: 17rem; margin: 25px">
                <img class="card-img-top img-fluid" src="img/teste.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">A Hora da Estrela</h5>
                    <div>
                      <label>Autor</label><br>
                      <label>Categoria</label><br>
                      <label>ISBN</label><br>
                      <label>Biblioteca</label>
                    </div>
                    <div class="text-center" id="id" style="border-top: solid 1px;">
                      <a href="#" class="btn "><img src="img/excluir.png" style="width: 25px; height: 25px"></a>
                      <a href="atualizarReferencia.html" class="btn "><img src="img/editar.png" style="width: 25px; height: 25px"></a>
                      <a href="livroDetalhado.html" class="btn "><img src="img/visualizar.png" style="width: 30px; height: 25px"></a>
                  </div>
                </div>
            </div>

            <div class="card mb-6" style="width: 17rem; margin: 25px">
                <img class="card-img-top img-fluid" src="img/teste.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">A Hora da Estrela</h5>
                    <div>
                      <label>Autor</label><br>
                      <label>Categoria</label><br>
                      <label>ISBN</label><br>
                      <label>Biblioteca</label>
                    </div>
                    <div class="text-center" id="id" style="border-top: solid 1px;">
                      <a href="#" class="btn "><img src="img/excluir.png" style="width: 25px; height: 25px"></a>
                      <a href="atualizarReferencia.html" class="btn "><img src="img/editar.png" style="width: 25px; height: 25px"></a>
                      <a href="livroDetalhado.html" class="btn "><img src="img/visualizar.png" style="width: 30px; height: 25px"></a>
                  </div>
                </div>
            </div>

            <div class="card mb-6" style="width: 17rem; margin: 25px">
                <img class="card-img-top img-fluid" src="img/teste.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">A Hora da Estrela</h5>
                    <div>
                      <label>Autor</label><br>
                      <label>Categoria</label><br>
                      <label>ISBN</label><br>
                      <label>Biblioteca</label>
                    </div>
                    <div class="text-center" id="id" style="border-top: solid 1px;">
                      <a href="#" class="btn "><img src="img/excluir.png" style="width: 25px; height: 25px"></a>
                      <a href="atualizarReferencia.html" class="btn "><img src="img/editar.png" style="width: 25px; height: 25px"></a>
                      <a href="livroDetalhado.html" class="btn "><img src="img/visualizar.png" style="width: 30px; height: 25px"></a>
                  </div>
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