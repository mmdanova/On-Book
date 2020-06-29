<%@page import="entidades.Autor"%>
<%@page import="dao.AutorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insere Autor</title>
    </head>
    <body>
        <%

            try {
                Autor autor = new Autor();
                AutorDAO autorDAO = new AutorDAO();
                if (request.getParameter("nome").equals("")) {
                    response.sendRedirect("autores.jsp");
                } else {
                    autor.setNome(request.getParameter("nome"));
                    autorDAO.inserir(autor);
                    response.sendRedirect("autores.jsp");
                }
            } catch (Exception e) {
                throw new RuntimeException("Erro ao inserir autor " + e);
            }

        %>
    </body>
</html>
