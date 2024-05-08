<?php

require 'config/config.php';
require 'config/database.php';
require 'clases/registroFunciones.php';

$db = new Database();
$con = $db->conectar();

$errors = [];

if (!empty($_POST)) {

    $nombre = trim($_POST['Nombre']);
    $apellidoP = trim($_POST['Primer Apellido']);
    $apellidoM = trim($_POST['Segundo Apellido']);
    $telefono =  trim($_POST['Telefono']);
    $correo = trim($_POST['Correo']);
    $contraseña = trim($_POST['Contraseña']);

    registrar([$nombre, $apellidoP, $apellidoM, $telefono, $correo, $contraseña], $con);
}
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="css/estilos.css" rel="stylesheet">
    <link rel="stylesheet" href="css/cmarielaregistro.css">
    <link rel="stylesheet" href="css/cabecera.css">
</head>



<body>
    <form action="registro.php" method="post">
        <h1>Registro</h1>
        <p>Nombre de usuario<input type="texto" placeholder="Ingrese su nombre" name="Nombre"></p>
        <p>Primer Apellido<input type="texto" placeholder="Ingrese su Primer Apellido" name="ApellidoP"></p>
        <p>Segundo Apellido<input type="texto" placeholder="Ingrese su Segundo Apellido" name="ApellidoM"></p>
        <p>Telefono<input type="texto" placeholder="Ingrese su numero telefonico" name="Telefono"></p>
        <p>Correo<input type="texto" placeholder="Ingrese su correo electronico" name="Correo"></p>
        <p>Contraseña <input type="password" placeholder="Ingrese su contraseña" name="Contraseña"></p>
        <h1></h1>
        <input type="submit" value="Registrar">


</body>

</html>