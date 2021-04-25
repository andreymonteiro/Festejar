<%-- 
    Document   : paganuncio
    Created on : 24/04/2021, 21:13:25
    Author     : Andrey
--%>

<%@page import="model.Avaliacao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="dao.AvaliacaoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    AvaliacaoDAO adao = new AvaliacaoDAO();
    //Produto p = new Produto();
    List<Avaliacao> lista = adao.listarComentariosPorProduto((Integer) request.getAttribute("idproduto") );
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${title}</title>
    </head>
    <body>
        
        <%@include file="navmenu.jsp" %>
        <h1>${title}</h1>
        <h2>R$${preco}</h2>
        <h3>${descricao}</h3>
        <h5>${contato}</h5>
        <h4>${estado}</h4>
        <h4>${cidade}</h4>
        
        <hr>
        
            <h2>COMENTÁRIOS:</h2>
            <form action="AdicionarComentario?id=${idproduto}" method="post">
                <input type="text" placeholder="Comentario.." name="comentario" />
                <input type="submit" value="ENVIAR"/>
            </form>
                <%for(int i = 0 ; i < lista.size(); i++){%>
                <div class="anuncio">
                    <h3><%=lista.get(i).getAutor()%></h3>  
                    <p><%=lista.get(i).getComentario()%></p>                   
                </div>
                <%}%>
    </body>
</html>
