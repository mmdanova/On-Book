<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Alterar Autor</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>

                <h1>Alterar Autor</h1>
                <%
                    String id = request.getParameter("idAutor");
                    String nome = request.getParameter("nome");
                %>
                <form method="POST" action="executa_alterarAutor.jsp">
                    <label>Código</label>
                    <input type="hidden" name="idAutor" value="<%=id%>"><%=id%><br>

                    <label>Nome do Autor</label>
                    <input type="text" name="nome" value="<%=nome%>"><br>

                    <input class="btn btn-primary" type="submit" value="Salvar">
                </form>

    </body>
</html>