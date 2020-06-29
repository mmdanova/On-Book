<%@page import="entidades.Autor"%>
<%@page import="dao.AutorDAO"%>
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
            try {
                idAutor = request.getParameter("idAutor");
            } catch (NumberFormatException e) {
                throw new RuntimeException("Erro ao pegar parametro " + e);
            }
            
            try {
                AutorDAO autorDAO = new AutorDAO();
                autorDAO.excluir(Integer.valueOf(idAutor));
                response.sendRedirect("autores.jsp");
            } catch (Exception e) {
                throw new RuntimeException("Erro no executa_excluir autor " + e);
            }

        %>
    </body>
</html>
