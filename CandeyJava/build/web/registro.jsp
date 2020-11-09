
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
           String Me = (String)sesion.getAttribute("me");
            if (Me != null){  %>
            <p>
                <% out.println("" + Me); 
                  sesion.setAttribute("me", " ");
                  %>
            </p>
        <% } %>

        <form action="agregar" method="POST" class="form">
            <h2>Registro</h2>
            <input type="text" name="email" placeholder="Usuario">
            <input type="password" name="pass" placeholder="Password">
            <input type="password" name="confirm" placeholder="Confirmar Password">
            <button type="submit" name="accion" value="agregar">Registrar</button>
        </form>

        <p>¿Ya eres un Usuario Registrado? <a href="controlador?menu=login">Ingresa Aquí</a></p>

    </main>

    <jsp:include page="footer.jsp" flush="true"/>

    

</body>

</html>
