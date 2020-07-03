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
            
            try {
                Biblioteca biblioteca = new Biblioteca();
                BibliotecaDAO bibliotecaDAO = new BibliotecaDAO();
                if (request.getParameter("nome").equals("")) {
                    response.sendRedirect("bibliotecas.jsp");
                } else {
                    biblioteca.setNome(request.getParameter("nome"));
                    biblioteca.setEmail(request.getParameter("email"));
                    biblioteca.setTelefone(request.getParameter("telefone"));
                    biblioteca.setRua(request.getParameter("rua"));
                    biblioteca.setNumEnd(request.getParameter("numEnd"));
                    biblioteca.setBairro(request.getParameter("bairro"));
                    biblioteca.setCidade(request.getParameter("cidade"));
                    biblioteca.setEstado(request.getParameter("estado"));
                    bibliotecaDAO.inserir(biblioteca);
                    response.sendRedirect("bibliotecas.jsp");
                }
            } catch (Exception e) {
                throw new RuntimeException("Erro ao inserir biblioteca " + e);
            }
        %>
    </body>
</html>
