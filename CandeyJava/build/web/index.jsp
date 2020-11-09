

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

    <!-- En esta parte decidimos ocultar las 3 imágenes debido a que hacen parte de un Image Slider que queremos introducir, pero
         que aún no manejamos del todo bien, al ser relacinado directamente con JavaScript -->
    <section class="banner" hidden>
        <ul>
            <li><img src="img/candy-jar.jpg"  alt="Dulces"></li>
            <li><img src="img/caramels.jpg" alt="Caramelos"></li>
            <li><img src="img/gummibarchen.jpg" alt="Ositos de gomita"></li>
        </ul>
    </section>

    <main>
        <section class="welcome">
            <h2>¡Bienvenido una vez más!</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, quia?</p>
        </section>

        <section class="candyPacks">
            <h2>¡Dulces Combos!</h2>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eaque, nostrum?</p>

            <article class="arti-1">
                <img src="Img/combo-mix.jpg" alt="Combo 1">
                <h3>Dulce 1</h3>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia ab libero doloribus et nemo delectus aut quasi voluptates sint temporibus.</p>
            </article>
            <article class="arti-2">
                <img src="Img/ballenitas.jpg" alt="Combo 2">
                <h3>Dulce 2</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum provident minima placeat laudantium distinctio sequi? Provident ducimus dolorum amet nostrum.</p>
            </article>
            <article class="arti-3">
                <img src="Img/huevitos.jpg" alt="Combo 3">
                <h3>Dulce 3</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta accusantium nemo cupiditate ab vitae incidunt ducimus laboriosam ipsam ipsa temporibus.</p>
            </article>
            <article class="arti-4">
                <img src="Img/gusanitos.jpg" alt="Combo 4">
                <h3>Dulce 4</h3>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit vel quas commodi iusto deleniti distinctio voluptatum exercitationem laudantium qui. Cupiditate.</p>
            </article>
            <article class="arti-5">
                <img src="Img/corazon-azul.jpg" alt="Combo 5">
                <h3>Dulce 5</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius explicabo velit numquam saepe laborum repellat laudantium blanditiis voluptate laboriosam id?</p>
            </article>
        </section>

    </main>

    <jsp:include page="footer.jsp" flush="true"/>

    <?php include('extras/function.php') ?>

</body>
</html>
