<%-- 
    Document   : navmenu
    Created on : 24/04/2021, 21:50:25
    Author     : Andrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://kit.fontawesome.com/6f81654ec4.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css"  href="css/estilos.css" />
</head>
<body>

    <header class="header">
        <div class="container">
            <h1 class="logo">
                <a href="index.jsp"><img src="imagens/Festejar2.png" alt="logo"</img></a>
            </h1>



            <nav id="menu">
                <ul>
                    <li><a href="index.jsp"><font face="Open Sans"  size= "2" color=#CD5C5C >INÍCIO</font></a></li>
                            <%if (session.getAttribute("id") != null) {%>
                    <li><a href="listaP.jsp"><font face="Open Sans"  size= "2" color=#CD5C5C >ANÚNCIOS</font></a></li>
                            <%} else {%>
                    <li><a href="cadastro.jsp"><font face="Open Sans"  size= "2" color=#CD5C5C >CRIAR CONTA</font></a></li>
                            <%}%>
                    <li><a href="entrar.jsp"><font face="Open Sans"  size= "2" color=#2D8073><%if (session.getAttribute("id") != null) {
                            out.print("<i class='fas fa-user-astronaut'> | </i>" + session.getAttribute("nome") + ": Criar Anuncio.");
                        } else {
                            out.print("Entrar");
                        }
                            %></font></a></li>
                            <%if (session.getAttribute("id") != null) {%>
                    <li><a href="Deslogar"><font face="Open Sans"  size= "2" color=#CD5C5C >SAIR</font></a></li>
                            <%}%>

                </ul>
            </nav>
        </div>
    </header>
</body>
</html>
