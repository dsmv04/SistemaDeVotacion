<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sistema_votacion";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$sql = "SELECT id, nombre FROM candidatos";
$result = $conn->query($sql);

$candidatos = array();
while($row = $result->fetch_assoc()) {
    $candidatos[] = $row;
}

$conn->close();

echo json_encode($candidatos);
?>
