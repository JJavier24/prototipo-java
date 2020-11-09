
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Manjari&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="Styles.css">
    <link rel="shortcut icon" href="favicon/frijolitos-confitados.ico" type="image/x-icon">
    <title>Candey</title>
</head>

<body>
    
    <jsp:include page="header.jsp" flush="true"/>

    <main class="main-login">

        <% 
            HttpSession sesion = request.getSession();
            
            
            String M = (String)sesion.getAttribute("mensaje");
            
            if (M!= null ){
        %>
            <p>
                <%out.println("" + M); 
                  sesion.setAttribute("mensaje", " ");
                
                %>  
            </p>
        <% } %>


        <form action="validar" method="POST" class="form">
            <h2>Login</h2>
            <input type="text" name="email" placeholder="Usuario">
            <input type="password" name="pass" placeholder="Password">
            <button type="submit" name="accion" value="ingresar">Ingresar</button>
        </form>

        <p>
            ¿No tienes una cuenta? Regístrate <a href="controlador?menu=registro">Aquí</a><br>
        </p>
        <p>
            Eliminar una cuenta <a href="controlador?menu=borrar">Aquí</a>
        </p>
    </main>

    <jsp:include page="footer.jsp" flush="true"/>

    

</body>

</html>










