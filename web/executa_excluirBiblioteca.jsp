<%@page import="entidades.Biblioteca"%>
<%@page import="dao.BibliotecaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idBiblioteca ="";
            try {
                idBiblioteca = request.getParameter("idBiblioteca");
            } catch (NumberFormatException e) {
                throw new RuntimeException("Erro ao pegar parametro " + e);
            }
            
            try {
                BibliotecaDAO bibliotecaDAO = new BibliotecaDAO();
                bibliotecaDAO.excluir(Integer.valueOf(idBiblioteca));
                response.sendRedirect("bibliotecas.jsp?idBiblioteca");
            } catch (Exception e) {
                throw new RuntimeException("Erro no executa_excluir biblioteca " + e);
            }

        %>
    </body>
</html>
