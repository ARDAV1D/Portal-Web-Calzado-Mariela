<?php
    require 'config/config.php';
    require 'config/database.php';
    $db = new Database();
    $con = $db->conectar();

    $producto = isset($_SESSION['carrito']['producto']) ? $_SESSION['carrito']['producto'] : null;

    $lista_carrito = array();

    if($producto != null){
        foreach($producto as $clave => $cantidad){

            $sql = $con->prepare("SELECT id, Nombre, Precio, Descuento, $cantidad AS Cantidad FROM producto WHERE id= ? AND Activo=1 ");
            $sql->execute([$clave]);
            $lista_carrito[] = $sql->fetch(PDO::FETCH_ASSOC);
        }
    } else{
        header("Location: home.php");
        exit;
    }
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calzado Mariela</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="css/estilos.css" rel="stylesheet">
</head>

<body>

<header class="navbar navbar-expand-lg  navbar-dark bg-dark ">
        <div class="container">
            <a href="#" class="navbar-brand">
                <strong>Calzado Mariela</strong>
            </a>

            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li><a href="home.php" class="nav-link px-2 link-active">Catalogo</a></li>
                <li><a href="contacto.php" class="nav-link px-2">Contacto</a></li>
            </ul>
            
            <div class="navbar-nav me-auto mb-2 mb-lg-0">
            <li><a href="checkout.php" class="nav-link">
                Carrito <span id="num_cart" class="badge bg-secondary"><?php echo $num_cart; ?></span>
            </a><li>
            </div>

            <div class="col-md-3 text-end">
                <button type="button" href="checkout.php" class="btn btn-outline-primary me-2">Cerrar Sesion</button>

            </div>
    </header>

    <main>
        <div class="container">

            <div class="row">
                <div class="col-6">
                    <h4>Detalles de pago</h4>
                    <div id="paypal-button-container"></div>
                </div>

                <div class="col-6">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Producto</th>
                                    <th>Subtotal</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if ($lista_carrito == null){
                            echo '<tr><td colspan="6" class="text-center"><b>Lista vacia</b></td></tr>';
                        } else {
                            $total = 0;
                            foreach($lista_carrito as $producto){
                                $_id = $producto['id'];
                                $nombre = $producto['Nombre'];
                                $precio = $producto['Precio'];
                                $descuento = $producto['Descuento'];
                                $cantidad = $producto['Cantidad'];
                                $precio_desc = $precio - (($precio * $descuento / 100));
                                $subtotal = $cantidad * $precio_desc;
                                $total += $subtotal;                
                                ?>
                                <tr>
                                    <td><?php echo $nombre; ?></td>
                                    <td>
                                        <div id="subtotal_<?php echo $_id; ?>" name="subtotal[]">
                                            <?php echo MONEDA . number_format($subtotal, 2, '.', ','); ?></div>
                                    </td>
                                    <?php } ?>

                                <tr>
                                    <td colspan="2">
                                        <p class="h3 text-end" id="total">
                                            <?php echo MONEDA . number_format($total, 2, '.', ','); ?></p>
                                    </td>
                                </tr>

                            </tbody>
                            <?php } ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>

    <script src="https://www.paypal.com/sdk/js?client-id=<?php echo CLIENT_ID; ?>&currency=<?php echo CURRENCY; ?>">
    </script>

    <script>
    paypal.Buttons({
        style: {
            color: 'blue',
            shape: 'pill',
            label: 'pay',

        },
        createOrder: function(data, actions) {
            return actions.order.create({
                purchase_units: [{
                    amount: {
                        value: <?php echo $total;?>
                    }
                }]
            })
        },

        onApprove: function(data, actions) {
            
            actions.order.capture().then(function(detalles) {

                console.log(detalles)

                let url = 'clases/captura.php'

                return fetch(url, {
                    method: 'post',
                    headers: {
                        'content-type': 'application/json'
                    },
                    body: JSON.stringify({
                        detalles: detalles
                    })
                }).then(function(response){
                    window.location.href = "completado.php?key=" +detalles['id']; 
                })
            });
        },

        onCancel: function(data) {
            alert("Pago cancelado")
            console.log(data);
        }
    }).render('#paypal-button-container');
    </script>

</body>

</html>