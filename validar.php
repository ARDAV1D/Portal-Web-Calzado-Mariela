<?php
$usuario=$_POST['Nombre'];
$contraseña=$_POST['Contraseña'];
session_start();
$_SESSION['Nombre']=$usuario;

$conexion=mysqli_connect("localhost", "root", "", "cmariela");

$consulta="SELECT*FROM usuario where Nombre = '$usuario' and Contraseña  = '$contraseña'";
$resultado=mysqli_query($conexion, $consulta);

$filas=mysqli_num_rows($resultado);

if($filas){
    header("location:home.php");
}else{
    ?>
    <?php
    include("index.php");
    ?>
    <h1 class="bad">ERROR EN LA AUTENTIFICACIÓN.</h1>
    <?php
}
mysqli_free_result($resultado);
mysqli_close($conexion);
?>