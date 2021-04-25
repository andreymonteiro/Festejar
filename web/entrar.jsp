<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
    if(session.getAttribute("id") != null){
     response.sendRedirect("cadastroPdt.jsp");
    }
%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Festejar - Aluguel de Artigos festivos</title>
        <link rel="stylesheet" href="css/style_entrar.css">
        
    </head>
    <body>
       
    <main style="top:40px;">
        <div id="main-containerr">
        
            <h1>Entre na sua Conta</h1>
            <div class="social-media">
                <a href="#">
                    <img src="assets/google.png" alt="Google">
                </a>
                <a href="#">
                    <img src="assets/facebook.png" alt="Facebook">
                </a>
            </div>

            <div class="alternative">
                <span>OU</span>
            </div>

            <form id="form1" name="form1" method="post"  action="Logar">

                <label for="email">
                    <span>E-mail</span>
                    <input type="email" id="email" name="email">
                </label>

                <label for="password">
                    <span>Senha</span>
                    <input type="password" id="password" name="senha">
                    <a href="esqueceusenha.html"><p><b>Esqueceu Senha?</b></p></a>
                </label>
                

                
                <input type="submit" value="Entrar"  id="button"> 
                
                <a href="cadastro.jsp"><p><b>Não Possue Conta? Crie Já</b></p></a>
                
            </form>
            
        
        </div>
    </main>
    <section class="images">
        <img src="assets/mobile.svg" alt="Mobile">
        <div class="circle"></div>
    </section>
    </body>
</html>
