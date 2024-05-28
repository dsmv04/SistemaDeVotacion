<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sistema_votacion";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$sql = "SELECT id, nombre FROM regiones";
$result = $conn->query($sql);

$regiones = array();
while($row = $result->fetch_assoc()) {
    $regiones[] = $row;
}

$conn->close();

echo json_encode($regiones);
?>
