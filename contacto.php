<?php require 'config/config.php';
require 'config/database.php'; ?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="css/estilos.css" rel="stylesheet">
    <title>Contacto Mariela</title>
</head>

<body>
    <header class="navbar navbar-expand-lg  navbar-dark bg-dark ">
        <div class="container">
            <a href="home.php" class="navbar-brand">
                <strong>Calzado Mariela</strong>
            </a>

            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li><a href="home.php" class="nav-link px-2 link-active">Catalogo</a></li>
                <li><a href="contacto.php" class="nav-link px-2">Contacto</a></li>
            </ul>

            <div class="navbar-nav me-auto mb-2 mb-lg-0">
                <li><a href="checkout.php" class="nav-link">
                        Carrito <span id="num_cart" class="badge bg-secondary"><?php echo $num_cart; ?></span>
                    </a>
                <li>
            </div>

            <div class="col-md-3 text-end">
                <button type="button" href="checkout.php" class="btn btn-outline-primary me-2">Cerrar Sesion</button>

            </div>

    </header>
    <main>
        <div class="container col-xxl-8 px-4 py-5">
            <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
                <div class="col-10 col-sm-8 col-lg-6">
                    <img src="../ImgMariela/Mariela1.jpg" class="d-block mx-lg-auto img-fluid" alt="" width="800" height="500" loading="lazy">
                </div>
                <div class="col-lg-6">
                    <h1 class="display-5 fw-bold lh-1 mb-3">CALZADO MARIELA</h1>
                    <p class="lead">
                    <h4>Empresa dedicada a la producción y venta de calzado para dama a nivel nacional</h4>
                    <p>
                        <br>
                    <h5><b> Contactanos: </b><br></h5>
                    - Gmail: cmariela.ventas@gmail.com</b><br>
                    - Quejas o sugerencias: contactocmariela@gmail.com</b> <br>
                    - Instagram: @marielashoes</b><br>

                    </p>

                </div>
            </div>
        </div>
    </main>
</body>

</html>