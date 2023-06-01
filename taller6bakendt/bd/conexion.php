<?php

$host = "localhost";
$usuario = "root";
$contraseña = "";
$bd = "mi_proyecto";

$conexion = new mysqli($host,$usuario,$contraseña,$bd);

if ($conexion->connect_errno) {
    echo "se experimentan fallos de conexion";
exit();
}