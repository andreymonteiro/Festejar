<%-- 
    Document   : alterarproduto
    Created on : 24/04/2021, 23:09:56
    Author     : Andrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDAO"%>
<%
    if(session.getAttribute("id") == null){
     response.sendRedirect("entrar.jsp");
    }
    ProdutoDAO pdao = new ProdutoDAO();
    //Produto p = new Produto();
    List<Produto> lista = pdao.listarProdutoPorPessoa((Integer) session.getAttribute("id"));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar produto: ${title}</title>
    </head>
    <body>
         <%@include file="navmenu.jsp" %>
        <div>
            <h1>Alterar Produto: ${title}</h1>
            <form action="AlterarProduto" method="post">
            <input type="text" name="nomeprod" value="${title}">
            <input type="number" name="preco" value="${preco}">
            <input type="text" name="descricao" value="${descricao}">
            <input type="number" name="contato" value="${contato}">
            <input type="text" name="estado" value="${estado}">
            <input type="text" name="cidade" value="${cidade}">
            <input type="hidden" name="idproduto" value="${idproduto}">
            <input type="submit" value="Alterar">
            <a href="listaP.jsp">Voltar</a>
            </form>
        </div>
        
    </body>
</html>
