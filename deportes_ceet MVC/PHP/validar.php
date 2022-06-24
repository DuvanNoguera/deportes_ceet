
<?php

$correo = $_POST['correo'];
$contraseña = $_POST['contraseña'];



session_start();

$_SESSION['correo']= $correo;

$conn = mysqli_connect('localhost', 'root', '', 'deportes_ceet');

$consulta="SELECT *FROM aprendiz where correo='$correo' and contraseña='$contraseña'";

$resultado=mysqli_query($conn, $consulta);
$filas=mysqli_num_rows($resultado);

if($filas){
header("location: https://depoceet.000webhostapp.com/deportes/index.html");

echo '<script language="javascript">alert("bienvenido a DEPORTES CEET");</script>';

}else{
	
?>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <script src="sweetalert.js"></script>
	
  <?php
include("volver.html");




mysqli_free_result($resultado);
mysqli_close($conn);
}

