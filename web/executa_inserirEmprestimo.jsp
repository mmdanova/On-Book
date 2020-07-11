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
                String idReferencia = request.getParameter("idReferencia");
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                Date dataInicioEmprestimo = new Date();
                Date dataFimEmprestimo = new Date();

                Calendar cal = Calendar.getInstance();
                cal.setTime(dataInicioEmprestimo);
                // adiciona dias na data
                cal.add(Calendar.DAY_OF_MONTH, 7); 
                dataFimEmprestimo = cal.getTime();
                
                if (request.getParameter("idReferencia").equals("")) {
                    response.sendRedirect("index.jsp");
                } else {
                    emprestimo.setReferenciaId(Integer.parseInt(idReferencia));
                    // situação 4 = "Aguardando retirada"
                    emprestimo.setSituacaoEmprestimo(4);
                    emprestimo.setDataInicioEmprestimo(dataInicioEmprestimo);
                    emprestimo.setDataFimEmprestimo(dataFimEmprestimo);
                    //emprestimo.setDataRetirada(dataRetirada);
                    
                    emprestimoDAO.inserir(emprestimo);
                    response.sendRedirect("index.jsp");
                }
            } catch (Exception e) {
                throw new RuntimeException("Erro no executa inserir emprestimo " + e );
            }
        %>
    </body>
</html>
