<%@page import="entidades.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idCategoria = "";
            try {
                idCategoria = request.getParameter("idCategoria");
            } catch (NumberFormatException e) {
                throw new RuntimeException("Erro ao pegar parametro " + e);
            }
            
            try {
                CategoriaDAO categoriaDAO = new CategoriaDAO();
                categoriaDAO.excluir(Integer.valueOf(idCategoria));
                response.sendRedirect("categorias.jsp");
            } catch (Exception e) {
                throw new RuntimeException("Erro no executa_excluir categoria " + e);
            }

        %>
    </body>
</html>
