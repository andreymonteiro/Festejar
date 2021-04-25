<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="pt_BR" scope="application"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="navmenu.jsp" %>
        <h1>CADASTRO PESSOA</h1>
        <form name="form1" action="pessoa.do?op=5" method="post">

            <input type="hidden" name="idPessoa" value="${objPessoa.idPessoa}"/>
            Nome: <input type="text" name="nome" maxlength="60" placeholder="Digite o nome" size="60" value="${objPessoa.nome}"/><br><br>
            Renda: <input type="number" name="renda" maxlength="10" placeholder="Digite a renda" size="40" value="${objPessoa.renda}"/><br><br>
            <input type="submit" value="Alterar"/> <input type="reset" value="limpar"/>


        </form>
    </body>
</html>