<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login CMariela</title>
    <link rel="stylesheet" href="css/cmarielalogin.css">
    <link rel="stylesheet" href="css/cabecera.css">
</head>

<body>
    <form action="validar.php" method="post">
        <h1>Bienvenido a Calzado Mariela</h1>
        <p>Usuario <input type="texto" placeholder="Ingrese su nombre" name="Nombre"></p>
        <h1></h1>
        <p>Contraseña <input type="password" placeholder="Ingrese su contraseña" name="Contraseña"></p>
        <h1></h1>
        <input type="submit" value="Iniciar sesion">
    </form>


</body>
<form action="registro.php" method="post">
    <h1>Registrarse</h1>
    <input type="submit" value="Registrarse">
</form>

</html>