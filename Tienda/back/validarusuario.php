<?php

include '../db/conexion.php';

if (isset($_POST['inicio'])) {
   $correo = $_POST['correo'];
   $contra = $_POST['contra'];
   $contra_enc = base64_encode($contra);

   $consulta = mysqli_query($conexion,"SELECT Correo, Contrasena from regis_usuarios 
    where Correo = '$correo' AND Contrasena = '$contra_enc'");

  $cant = mysqli_num_rows($consulta);
  

  if ($cant ==1) {
      header('location:../aplicativo/home.php');
  }else{
      header('location:../registrousuario.html');
  }
 
}
?>