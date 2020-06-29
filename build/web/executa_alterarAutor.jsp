<%@page import="dao.AutorDAO"%>
<%@page import="entidades.Autor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idAutor = "";
            String nome = "";
            try {
                idAutor = request.getParameter("idAutor");
                nome = request.getParameter("nome");
            } catch (NumberFormatException e) {
                throw new RuntimeException("Erro ao pegar parametros " + e);
            }

            try {
                Autor autor = new Autor();
                AutorDAO autorDAO = new AutorDAO();
                if (nome.equals("")) {
                    response.sendRedirect("autores.jsp");
                } else {
                    autor.setIdAutor(Integer.valueOf(idAutor));
                    autor.setNome(nome);
                    autorDAO.alterar(autor);
                    response.sendRedirect("autores.jsp");
                }
            } catch (Exception e) {
                throw new RuntimeException("Erro no executa_alterar autor " + e);
            }

        %>
    </body>
</html>