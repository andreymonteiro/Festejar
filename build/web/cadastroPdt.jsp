<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
    if(session.getAttribute("id") == null){
     response.sendRedirect("entrar.jsp");
    }
%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Festejar- Anunciar um produto</title>
    </head>

    <body>
        <%@include file="navmenu.jsp" %>
        <center>

            <div style="background-color:#FAFAFA">
                <p>&nbsp;</p>
                <form id="form1" name="form1" method="post" action="CadastrarProduto">

                    <p> <font face="Arial" color=#CD5C5C size="9"  > <b>Anunciar</b></font> 

                    </p>



                    <table width="400" border="0" align="center">
                        <tr>
                            <td width="100">&nbsp;</td>
                            <td width="484">&nbsp;</td>
                        </tr>
                        <tr>
                            <td><font face="Arial" color=#CD5C5C size="3"  >PRODUTO:</font></td>
                            <td><label for="produto"></label>
                                <input name="nomeprod" type="text" id="produto" size="60" maxlength="25" /></td>
                        </tr>
                          <tr>
                              <td><font face="Arial" color=#CD5C5C size="3"  >FOTO:</font></td>
                            <td>
                             <img src="imagens/img.png">
                            </td>
                        </tr>
                        <tr>
                            <td height="26"><font face="Arial" color=#CD5C5C size="3"  ><p>VALOR:</p></font></td>
                            <td><label for="valor"></label>
                                <input type="number" name="preco" id="valor" /></td>
                        </tr>
                        <tr>
                            <td><font face="Arial" color=#CD5C5C size="3"  >DESCRIÇÃO:</font></td>
                            <td><label for="descricao"></label>
                                <input name="descriprod" type="text" id="descricao" size="60" maxlength="100" /></td>
                        </tr>
                        <tr>
                            <td><font face="Arial" color=#CD5C5C size="3"  >CONTATO:</font></td>
                            <td><label for="contato"></label>
                                <input name="contato" type="number" id="contato" size="60" maxlength="40" /></td>
                        </tr>
                        
                        <tr>
                            <td><font face="Arial" color=#CD5C5C size="3"  >ESTADO:</font></td>
                            <td><label for="estado"></label>
                                <input name="estado" type="text" id="estado" size="60" maxlength="20" /></td>
                        </tr>
                        <tr>
                            <td><font face="Arial" color=#CD5C5C size="3"  >CIDADE:</font></td>
                            <td><label for="nome"></label>
                                <input name="cidade" type="text"  size="60" maxlength="20" /></td>
                        </tr>
                        

                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td height="26" colspan="2" align="center"><input type="submit" name="btnCadastrar" id="btnCadastrar" value="Cadastrar" />
                                <input type="reset" name="button" id="button" value="Limpar" /></td>
                        </tr>
                        <tr>
                            <td height="26">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </form>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
            </div>
        </center>

    </body>
</html>
