<?php
$dbhost = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "racing_university";

$conn = mysqli_connect($dbhost, $dbusername, $dbpassword, $dbname);


if (!$conn) {
    die("No hay conexion:" . mysqli_connect_error());
}
