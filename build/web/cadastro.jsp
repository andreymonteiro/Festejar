<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
    if(session.getAttribute("session") != null){
     response.sendRedirect("index.jsp");
    }
%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Festejar - Cadastro</title>
        <link rel="stylesheet" href="css/style_entrar.css">
        
 </head>

    <body>
        
             <main>
        <div id="main-container">
        
            <h1>Crie sua Conta</h1>
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

            <form id="form1" name="form1" method="post"  action="cadastrarpessoa">
                <label for="name">
                    <span>Nome Completo</span>
                    <input type="text" id="name" name="nome">
                </label>

                <label for="email">
                    <span>E-mail</span>
                    <input type="email" id="email" name="email">
                </label>

                <label for="password">
                    <span>Senha</span>
                    <input type="password" id="password" name="senha">
                </label>

                <input type="submit" value="Criar Conta" name="btnCadastrar" id="button"> 

               <a href="entrar.jsp"><p><b>N�o Possui Conta? Entrar</b></p></a>

            </form>
            
        
        </div>
    </main>
    <section class="images">
        <img src="assets/mobile.svg" alt="Mobile">
        <div class="circle"></div>
    </section>
                
                
        </div>
    </body>
</html>
