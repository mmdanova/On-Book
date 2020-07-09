<%@page import="dao.AutorDAO"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="dao.BibliotecaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="dao.ReferenciaDAO"%>
<%@page import="entidades.Referencia"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.awt.Image;"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.*"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.*"%>
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
                Referencia referencia = new Referencia();
                ReferenciaDAO referenciaDAO = new ReferenciaDAO();
                String idAutor = request.getParameter("autorRef");
                String idCategoria = request.getParameter("categoriaRef");
                String idBiblioteca = request.getParameter("bibliotecaRef");
                if (request.getParameter("titulo").equals("")) {
                    response.sendRedirect("index.jsp");
                } else {
                    referencia.setTitulo(request.getParameter("titulo"));
                    referencia.setIsbn(request.getParameter("isbn"));
                    referencia.setVolume(request.getParameter("volume"));
                    //referencia.setImagem(request.getParameter("imagem"));
                    // necessário fazer a lógica pra guardar imagem na pasta img
                   
                    referenciaDAO.inserir(referencia, Integer.parseInt(idAutor), Integer.parseInt(idCategoria), Integer.parseInt(idBiblioteca));
                    response.sendRedirect("index.jsp");
                }
            } catch (Exception e) {
                throw new RuntimeException("Erro ao inserir referencia " + e);
            }
        %>
    </body>
</html>
