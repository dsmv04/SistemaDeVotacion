<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sistema_votacion";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$region_id = $_GET['region_id'];

$sql = "SELECT id, nombre FROM comunas WHERE region_id = $region_id";
$result = $conn->query($sql);

$comunas = array();
while($row = $result->fetch_assoc()) {
    $comunas[] = $row;
}

$conn->close();

echo json_encode($comunas);
?>
