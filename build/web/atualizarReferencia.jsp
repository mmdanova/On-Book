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
          <h4 style="color: white">Atualizar Refer�ncia</h4>
        </nav>

        <div class="container-fluid bg-light">
          <div class="row" id="ContainerForm">
            <div class="col"></div>
            <div class="col-6">

              <form>
                <div class="form-group">
                  <input type="text" class="form-control" id="txtTitulo" placeholder="Titulo">
                </div>

                <div class="form-group">
                    <select class="form-control" id="txtAutor" value="autor">
                      <option disabled selected>Autor</option>
                      <option value="autor1">Autor 1</option>
                      <option value="autor2">Autor 2</option>
                    </select>
                </div>

                <div class="form-group">
                  <input type="text" class="form-control" id="txtIsbn" placeholder="ISBN">
                </div>

                <div class="form-group">
                  <input type="number" class="form-control" id="txtVolume" placeholder="Volume">
                </div>

                <div class="form-group">
                    <select class="form-control" id="txtBiblioteca" value="biblioteca">
                      <option disabled selected>Bibliotecas</option>
                      <option value="bibliotecas1">Biblioteca 1</option>
                      <option value="bibliotecas2">Bibliotecas 2</option>
                    </select>
                </div>

                <div class="form-group">
                  <select class="form-control" id="txtCategoria" value="categoria">
                    <option disabled selected>Categoria</option>
                    <option value="categoria1">Categoria 1</option>
                    <option value="categoria2">Categoria 2</option>
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