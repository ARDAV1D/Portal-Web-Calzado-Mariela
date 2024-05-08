<?php

function generarToken()
{

    return md5(uniqid(mt_rand(), false));
}

function registrar(array $datos, $con)
{

    $sql = $con->prepare("INSERT INTO usuario (Nombre, ApellidoP, ApellidoM, Telefono, Correo, Contraseña) 
    VALUES (?,?,?,?,?,?)");

    if ($sql->execute($datos)) {
        return $con->lastInsertId();
    }
    return 0;
}
