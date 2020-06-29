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
          <a href="index.jsp" class="border-white list-group-item list-group-item-action">
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
          <a href="emprestimo.jsp" class="border-white list-group-item list-group-item-action bg-light">
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
          <h4 style="color: white">Empr�stimo Detalhado</h4>
          <a href="emprestimo.html"><img src="img/voltar.png" style="width: 30px; height: 30px; margin-right: 20px;"></a>
        </nav>

        <div class="container-fluid bg-light">
          <div class="row" id="ContainerForm">

            <div class="card" style="margin: 20px">
              <div class="card-body">
                <div class="row">
                  <div class="col">
                    <h5 class="card-title" id="tituloEmprestimo">A Hora da Estrela</h5>
                    <img src="img/teste.jpg">
                  </div>
                </div>
                <div class="row">
                  <div class="col">
                    <label id="autorEmprestimo">Autor</label><br>
                    <label id="categoriaEmprestimo">Categoria</label><br>
                    <label id="isbnEmprestimo">ISBN</label><br>
                    <label id="bibliotecaEmprestimo">Biblioteca</label>
                    </div>
                </div>
              </div>
            </div>

            <div class="card" style="margin: 20px">
              <div class="card-body">
                <div class="row">
                  <div class="col">
                    <label><b>Retirado Em: </b></label><label id="idDataRetirada"> 30/05/2020</label><br>
                    <label><b>Data Final: </b></label><label id="idDataFinal"> 06/06/2020</label><br>
                    <div class="row">
                      <div class="col">
                        <label><b>Biblioteca: </b></label><p id="idNomeBiblioteca">Biblioteca Municipal de S�o Jos�</p>
                        <label><b>Localiza��o: </b></label><p id="idLocalizacao">R. Padre Mac�rio, 10 - Centro, S�o Jos� - SC, 88103-020</p>                      
                      </div>
                    </div>
                  </div>
                  <div class="col">
                    <label><b>Status: </b></label><label id="idStatusEmprestimo">Pendente</label>
                  </div>
                </div>
                <div class="form-group float-right">
                  <button type="submit" id="btnEmprestimo" class="btn btn-primary" style="margin: 20px">Finalizar Empr�stimo</button>
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