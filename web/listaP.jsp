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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Festejar - Anúncios</title>  
        <style>
            .popup{
                display: flex;
                flex-direction: column;
                width: 400px;
                height: 400px;
                padding: 20px;
                position: fixed;
                left: 200px;
                bottom: 20px;
                background-color: gray;
                text-align: center;
                border-radius: 10px;
            }
            .popup input{
                margin-bottom: 10px;
                padding: 10px;
                font-size-adjust: 10px
            }
        </style>
    </head>
    
    <body>
        <%@include file="navmenu.jsp" %>

            <div style="background-color:#FAFAFA">
                <%for(int i = 0 ; i < lista.size(); i++){%>
                <div class="anuncio">
                    <h2><%=lista.get(i).getNomeprod()%></h2>
                    <p><%=lista.get(i).getDescriprod()%></p>
                    <div class="contato">
                        <span><%=lista.get(i).getContato()%></span>
                        <address><%=lista.get(i).getCidade()%> - <%=lista.get(i).getEstado()%></address>
                        <span><%=lista.get(i).getPreco()%></span>
                    </div>
                    <a href="ExcluirProduto?id=<%=lista.get(i).getIdProduto()%>">Excluir</a>
                    <a href="CarregarProduto?id=<%=lista.get(i).getIdProduto()%>">Alterar</a>
                    
                </div>
                <%}%>
            </div>
        
      
    </body>     
</html>
