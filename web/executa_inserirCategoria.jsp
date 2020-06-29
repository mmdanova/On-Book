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
            try {
                Categoria categoria = new Categoria();
                CategoriaDAO categoriaDAO = new CategoriaDAO();
                if (request.getParameter("nome").equals("")) {
                    response.sendRedirect("categorias.jsp");
                } else {
                    categoria.setNome(request.getParameter("nome"));
                    categoriaDAO.inserir(categoria);
                    response.sendRedirect("categorias.jsp");
                }
            } catch (Exception e) {
                throw new RuntimeException("Erro ao inserir categoria " + e);
            }

        %>
    </body>
</html>
