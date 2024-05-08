<?php
define("CLIENT_ID","AS22hxDcl3Kqv6H5OBPRLJ7_Qmer2KPrlvMXtg7CCBzFMjvLvMy7Xqq9DHZ_1InNcGvYvqp6AjrUSb1F");
define("CURRENCY","MXN");
define("KEY_TOKEN","ISC.adc-2877");
define("MONEDA","$");

session_start();

$num_cart = 0; 
if(isset($_SESSION['carrito']['producto'])){
    $num_cart = count($_SESSION['carrito']['producto']);

}
?>