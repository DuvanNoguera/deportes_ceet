<?php

    $usuario = "root"; 
    $password = ""; 
    $servidor = "localhost"; 
    $basededatos ="deportes_ceet"; 


$conexion = mysqli_connect  ($servidor,$usuario,"") or die ("Error con el servidor de la Base de datos"); 


$db = mysqli_select_db($conexion, $basededatos) or die ("Error conexion al conectarse a la Base de datos");


    $identificacion=$_POST['identificacion'];
    $nombre=$_POST['nombre']; 
    $correo=$_POST['correo']; 
    $contraseña=$_POST['contraseña']; 
    $fecha=$_POST['fecha'];
    $genero=$_POST['genero'];
    $gustos=$_POST['gustos'];
    $sede=$_POST['sede'];

    $contraseña = password_hash($contraseña,PASSWORD_DEFAULT);
    
    $sql="INSERT INTO `aprendiz`(`identificacion`, `nombre`, `correo`, `contraseña`, `fecha`, `genero`, `gustos`, `sede`) VALUES ('$identificacion','$nombre','$correo','$contraseña','$fecha','$genero','$gustos','$sede')";
    
    $ejecutar=mysqli_query($conexion, $sql);


    if(!$ejecutar){
        echo"huvo algun error"; 
    }else{
        echo"<h1>Sus datos han sido guardados correctamente
        <br>
        <br>
        <a href='volver.html'>volver</h1>"; 
    }
     
?>﻿