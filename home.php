<?php
require 'config/config.php';
require 'config/database.php';
$db = new Database();
$con = $db->conectar();

$sql = $con->prepare("SELECT id, Nombre, Precio FROM producto WHERE Activo=1 ");
$sql->execute();
$result = $sql->fetchAll(PDO::FETCH_ASSOC);


//session_destroy();

//print_r($_SESSION);
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calzado Mariela</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="css/estilos.css" rel="stylesheet">
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
                <li><a href="index.php" class="nav-link">
                        <button type="button" href="checkout.php" class="btn btn-outline-primary me-2">Cerrar Sesion</button></a>
                <li>



            </div>
    </header>

    <main>
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <?php foreach ($result as $row) { ?>
                    <div class="col">
                        <div class="card shadow-sm">
                            <?php

                            $id = $row['id'];
                            $imagen = "imagenes/calzado/" . $id . "/calzado.jpeg";

                            if (!file_exists($imagen)) {
                                $imagen = "imagenes/no-photo.jpg";
                            }
                            ?>
                            <img src="<?php echo $imagen; ?>">
                            <div class="card-body">
                                <h5 class="card-title"><?php echo $row['Nombre']; ?></h5>
                                <p class="card-text">$ <?php echo number_format($row['Precio'], 2, '.', ','); ?></p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <a href="detalles.php?id=<?php echo $row['id']; ?>&token=<?php echo
                                                                                                    hash_hmac('sha1', $row['id'], KEY_TOKEN); ?>" class="btn btn-primary">Detalles</a>
                                    </div>
                                    <button class="btn btn-outline-success" type="button" onclick="addProducto(
                                <?php echo $row['id']; ?>,'<?php echo hash_hmac('sha1', $row['id'], KEY_TOKEN); ?>')">Agregar al carrito</button>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>

    <script>
        function addProducto(id, token) {
            let url = 'clases/carrito.php'
            let formData = new FormData()
            formData.append('id', id)
            formData.append('token', token)

            fetch(url, {
                    method: 'POST',
                    body: formData,
                    mode: 'cors'
                }).then(response => response.json())
                .then(data => {
                    if (data.ok) {
                        let elemento = document.getElementById("num_cart")
                        elemento.innerHTML = data.numero
                    }

                })
        }
    </script>

</body>

</html>