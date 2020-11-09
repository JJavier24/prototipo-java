

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

    <main class="main-contacto">
        <section class="sec-cont-info">
            <h2>Contacto</h2>

            <h3>Información de Contacto</h3>

            <h3>Sede Principal:</h3>
            <p>Lorem ipsum dolor sit amet.</p>

            <h3>Sucursal 1:</h3>
            <p>Lorem ipsum dolor sit amet.</p>

            <h3>E-mail:</h3>
            <p>Loremipsum@dolor.sit</p>
        </section>

        <section class="sec-cont-aside"> 
            <picture>
                <img src="Img/tarro.png" alt="Tarro de dulces">
            </picture>
        </section>
    </main>

    <jsp:include page="footer.jsp" flush="true"/>

    <?php include('extras/function.php') ?>

</body>
</html>
