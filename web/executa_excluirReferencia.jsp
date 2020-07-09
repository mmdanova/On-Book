<%@page import="entidades.Referencia"%>
<%@page import="dao.ReferenciaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                String idReferencia = "";
                try {
                    idReferencia = request.getParameter("idReferencia");
                } catch (NumberFormatException e) {
                    throw new RuntimeException("Erro ao pegar parametro " + e);
                }
            
                try {
                    ReferenciaDAO referenciaDAO = new ReferenciaDAO();
                    referenciaDAO.excluir(Integer.valueOf(idReferencia));
                    response.sendRedirect("index.jsp");
                } catch (Exception e) {
                    throw new RuntimeException("Erro no executa_excluir referencia " + e);
                }

        %>
    </body>
</html>
