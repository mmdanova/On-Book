<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="dao.BibliotecaDAO"%>
<%@page import="entidades.Biblioteca"%>
<!DOCTYPE html>
<html>
<title>OnBook Bibliotecas</title>
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
          <h4 style="color: white">Bibliotecas Cadastradas</h4>
          <a href="novaBiblioteca.jsp"><img src="img/adicionar.png" style="width: 30px; height: 30px; margin-right: 20px;"></a>
        </nav>

        <div class="container-fluid bg-light" id="ContainerList">
          <div class="row" >

                                      <%
                                                      try {
                                                          BibliotecaDAO bibliotecaDAO = new BibliotecaDAO();
                                                          ArrayList<Biblioteca> arrayBiblioteca = bibliotecaDAO.listarTodasBibliotecas();
                                                          for (int i = 0; i < arrayBiblioteca.size(); i++) {
                                                    
                                                              out.print("<div class='card mb-6' style='width: 17rem; margin: 25px'>");
                                                              out.print("<div class='card-body'>");
                                                              out.print("<h5 class='card-title'> "+arrayBiblioteca.get(i).getNome()+"</h5>");
                                                              out.print("<div>");
                                                              out.print("<p>"+arrayBiblioteca.get(i).getRua()+", "+arrayBiblioteca.get(i).getNumEnd()+" - "+arrayBiblioteca.get(i).getBairro()+", "+arrayBiblioteca.get(i).getCidade()+" - "+arrayBiblioteca.get(i).getEstado()+"</p>");
                                                              out.print("<label>Contato: "+arrayBiblioteca.get(i).getTelefone()+"</label><br>");
                                                              out.print("<label>E-mail: "+arrayBiblioteca.get(i).getEmail()+"</label>");
                                                              out.print("</div>");
                                                              out.print("<div class='text-center' style='border-top: solid 1px;'>");
                                                              out.print("<a href='executa_excluirBiblioteca.jsp?idBiblioteca=" + arrayBiblioteca.get(i).getIdBiblioteca() + "' class='btn '><img src='img/excluir.png' style='width: 25px; height: 25px'></a>");
                                                              out.print("<a href='atualizarBiblioteca.jsp?idBiblioteca=" + arrayBiblioteca.get(i).getIdBiblioteca() + "&nome=" + arrayBiblioteca.get(i).getNome() + "&email=" + arrayBiblioteca.get(i).getEmail() + "&telefone=" + arrayBiblioteca.get(i).getTelefone() + "&rua=" + arrayBiblioteca.get(i).getRua() + "&numEnd=" + arrayBiblioteca.get(i).getNumEnd() + "&bairro=" + arrayBiblioteca.get(i).getBairro() + "&cidade=" + arrayBiblioteca.get(i).getCidade() + "&estado=" + arrayBiblioteca.get(i).getEstado() + "' class='btn'><img src='img/editar.png' style='width: 25px; height: 25px'></a>");
                                                              out.print("</div>");
                                                              out.print("</div>");
                                                              out.print("</div>");
                                                    
                                                          }   
                                                      } catch (Exception e) {
                                                          throw new RuntimeException("Erro ao listar bibliotecas a" + e);
                                                      }

                        %>


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