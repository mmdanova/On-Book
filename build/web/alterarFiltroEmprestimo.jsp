<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String x = request.getParameter("filtroEmprestimo");
        Integer z = Integer.parseInt(x);
        
            if(z == 1) {
                response.sendRedirect("emprestimoEmAtraso.jsp");
            } else if (z == 2 || z == 4) {
                response.sendRedirect("emprestimo.jsp");
            } else if (z == 3) {
                response.sendRedirect("emprestimoFinalizado.jsp");
                
            }
        %>
    </body>
</html>
