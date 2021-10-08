<?php

include("conexion.php");

$email = $_POST["email"];
$password = $_POST["password"];

//login
if (isset($_POST["btningresar"])) {
    $query = mysqli_query($conn, "SELECT * FROM usuarios WHERE email = '$email' AND password = '$password'");
    $nr = mysqli_num_rows($query);

    if ($nr == 1) {
        echo "<script> alert('Bienvenido $nombre'); window.location='principal.html' </script>";
    } else {
        echo "<script> alert('Usuario no existe'); window.location='index.html' </script>";
    }
}

$nombre = $_POST["nombre"];
$apellido = $_POST["apellido"];
$password2 = $_POST["password2"];

//Registrar
if (isset($_POST["btnregistrar"])) {
    $sqlgrabar = "INSERT INTO usuarios(nombre, apellido, email,password,password2) values ('$nombre' , '$apellido' , '$email' , '$password' , '$password2')";

    // faltaba cerrar el último paréntesis    
    if (mysqli_query($conn, $sqlgrabar)) {
        echo "<script> alert('Usuario registrado con éxito: $nombre'); window.location = 'index.html' </script>";
    } else {
        echo "Error: " . $sql . "<br>" . mysql_error($conn);
    }
}
