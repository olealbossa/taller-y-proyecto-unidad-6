<?php

session_start();

include '../db/conexion.php';

if (isset($_POST['iniciotienda'])) {
   $correotienda = $_POST['correotienda'];
   $contratienda = $_POST['contratienda'];
   $contratienda_enc = base64_encode($contratienda);

   $consulta = mysqli_query($conexion,"SELECT Correo, Contrasena from regis_tienda 
    where Correo = '$correotienda' AND Contrasena = '$contratienda_enc'");

  $cant = mysqli_num_rows($consulta);
  

  if ($cant ==1) {
      header('location:../registropro.html');
  }else{
      header('location:../registrotienda.html');
  }
 
}
?>