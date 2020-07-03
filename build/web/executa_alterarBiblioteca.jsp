<%@page import="dao.BibliotecaDAO"%>
<%@page import="entidades.Biblioteca"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idBiblioteca = "";
            String nome = "";
            String email = "";
            String telefone = "";
            String rua = "";
            String numEnd = "";
            String bairro = "";
            String cidade = "";
            String estado = "";
            try {
                idBiblioteca = request.getParameter("idBiblioteca");
                nome = request.getParameter("nome");
                email = request.getParameter("email");
                telefone = request.getParameter("telefone");
                rua = request.getParameter("rua");
                numEnd = request.getParameter("numEnd");
                bairro = request.getParameter("bairro");
                cidade = request.getParameter("cidade");
                estado = request.getParameter("estado");
            } catch (NumberFormatException e) {
                throw new RuntimeException("Erro ao pegar parametros " + e);
            }

            try {
                Biblioteca biblioteca = new Biblioteca();
                BibliotecaDAO bibliotecaDAO = new BibliotecaDAO();
                if (nome.equals("")) {
                    response.sendRedirect("bibliotecas.jsp");
                } else {
                    biblioteca.setIdBiblioteca(Integer.valueOf(idBiblioteca));
                    biblioteca.setNome(nome);
                    biblioteca.setEmail(email);
                    biblioteca.setTelefone(telefone);
                    biblioteca.setRua(rua);
                    biblioteca.setNumEnd(numEnd);
                    biblioteca.setBairro(bairro);
                    biblioteca.setCidade(cidade);
                    biblioteca.setEstado(estado);
                    bibliotecaDAO.alterar(biblioteca);
                    response.sendRedirect("bibliotecas.jsp");
                }
            } catch (Exception e) {
                throw new RuntimeException("Erro no executa_alterar biblioteca " + e);
            }

        %>
    </body>
</html>
