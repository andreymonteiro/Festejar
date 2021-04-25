<%-- 
    Document   : index
    Created on : 24/04/2021, 17:35:41
    Author     : Andrey
--%>

<%@page import="java.util.List"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ProdutoDAO pdao = new ProdutoDAO();
    //Produto p = new Produto();
    List<Produto> lista = pdao.listarTudo();
%>
﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Festejar - Aluguel de Artigos festivos</title>

    </head>

    <body>
        <%@include file="navmenu.jsp" %>

        <div style="background-color:#FAFAFA">
            <center>
                <table align="center">

                    <tr>


                        <td> <font face="Arial" color=#CD5C5C size="6"  > <b> Festejar - Decoração e Artigos. </b> </font> </br>
                            <font face="Arial" color=#2D8073 size="4"  > Organize sua festa dos sonhos no conforto da sua casa! </font>
                        </td> 

                        <td >
                            <img  width="500" height="500" src="imagens/1.png">
                        </td>


                    </tr>

                </table>
        </div>
        
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
                    <a href="Anuncio?id=<%=lista.get(i).getIdProduto()%>">Visitar Anuncio</a>
                </div>
                <%}%>
            </div>

    </body>

</html>