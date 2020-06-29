<%@page import="dao.CategoriaDAO"%>
<%@page import="entidades.Categoria"%>
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
            String nome = "";
            try {
                idCategoria = request.getParameter("idCategoria");
                nome = request.getParameter("nome");
            } catch (NumberFormatException e) {
                throw new RuntimeException("Erro ao pegar parametros " + e);
            }

            try {
                Categoria categoria = new Categoria();
                CategoriaDAO categoriaDAO = new CategoriaDAO();
                if (nome.equals("")) {
                    response.sendRedirect("categorias.jsp");
                } else {
                    categoria.setIdCategoria(Integer.valueOf(idCategoria));
                    categoria.setNome(nome);
                    categoriaDAO.alterar(categoria);
                    response.sendRedirect("categorias.jsp");
                }
            } catch (Exception e) {
                throw new RuntimeException("Erro no executa_alterar categoria " + e);
            }

        %>
    </body>
</html>
