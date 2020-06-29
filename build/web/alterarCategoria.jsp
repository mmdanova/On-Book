<%-- 
    Document   : alterarCategoria
    Created on : 28/06/2020, 22:08:21
    Author     : Joao Vitor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Categoria</title>
    </head>
    <body>

                <h1>Alterar Categoria</h1>
                <%
                    String id = request.getParameter("idCategoria");
                    String nome = request.getParameter("nome");
                %>
                <form method="POST" action="executa_alterarCategoria.jsp">
                    <label>Código</label>
                    <input type="hidden" name="idCategoria" value="<%=id%>"><%=id%><br>

                    <label>Nome da Categoria</label>
                    <input type="text" name="nome" value="<%=nome%>"><br>

                    <input class="btn btn-primary" type="submit" value="Salvar">
                </form>
    </body>
</html>
