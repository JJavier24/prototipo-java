

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Manjari&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="Styles.css">
    <link rel="shortcut icon" href="../favicon/frijolitos-confitados.ico" type="image/x-icon">
    <title>Candey</title>
</head>

<body>
     <jsp:include page="header.jsp" flush="true"/>

    <main class="main-login">

       <% 
           HttpSession sesion = request.getSession();
           String M3 = (String)sesion.getAttribute("M3");
            if (M3 != null){  %>
            <p>
                <% out.println("" + M3); 
                  sesion.setAttribute("M3", " ");
                  %>
            </p>
        <% } %>

        <form action="borrar" method="POST" class="form">

            <h2>Eliminar una cuenta</h2>
            <input type="text" name="email" placeholder="email">
            <input type="password" name="pass" placeholder="Password">
            <button type="submit" name="accion" value="elm">Eliminar</button>
        </form>

    </main>

 

</body>

</html>