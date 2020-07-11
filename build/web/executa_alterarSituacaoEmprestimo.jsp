<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dao.AutorDAO"%>
<%@page import="entidades.Autor"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="entidades.Categoria"%>
<%@page import="dao.BibliotecaDAO"%>
<%@page import="entidades.Biblioteca"%>
<%@page import="dao.ReferenciaDAO"%>
<%@page import="entidades.Referencia"%>
<%@page import="dao.EmprestimoDAO"%>
<%@page import="entidades.Emprestimo"%>
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
                Emprestimo emprestimo = new Emprestimo();
                EmprestimoDAO emprestimoDAO = new EmprestimoDAO();
                String idEmprestimo = request.getParameter("idEmprestimo");
                String idSituacao = request.getParameter("idSituacao");
                Integer idSituacaoFinalizado = 3;
                if (request.getParameter("idEmprestimo").equals("")) {
                    response.sendRedirect("emprestimo.jsp");
                } else {
                    emprestimo.setIdReferencia(Integer.parseInt(idEmprestimo));
                    //emprestimo.setSituacaoEmprestimo(3);
                        
                    emprestimoDAO.alterarSituacaoEmprestimo(Integer.parseInt(idEmprestimo), Integer.parseInt(idSituacao));
                    response.sendRedirect("emprestimo.jsp");
                }
            } catch (Exception e) {
                throw new RuntimeException("Erro ao alterar situação emprestimo para finalizado " + e);
            }
        %>
    </body>
</html>
