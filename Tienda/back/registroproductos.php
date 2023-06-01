<?php

include '../db/conexion.php';

if(isset($_POST['regis_proct'])) {

   $Nombre_Producto = $_POST['Nombre_Producto'];
   $Tipo_Producto = $_POST['Tipo_Producto'];
   $img_producto = $_POST['img_producto'];
   $Descripcion_Producto = $_POST['Descripcion_Producto'];
   $Precio_Producto =$_POST['Precio_Producto'];


   $sql = mysqli_query($conexion,"INSERT INTO productos (Nombre_Producto, Tipo_Producto, 	img_productos, Descripcion_Producto, Precio_producto) VALUES 
   ('$Nombre_Producto', '$Tipo_Producto', '$img_producto', '$Descripcion_Producto', '$Precio_Producto')");


}
?>