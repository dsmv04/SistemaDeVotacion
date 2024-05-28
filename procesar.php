<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sistema_votacion";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$nombre_apellido = $_POST['nombre_apellido'];
$alias = $_POST['alias'];
$rut = $_POST['rut'];
$email = $_POST['email'];
$region_id = $_POST['region'];
$comuna_id = $_POST['comuna'];
$candidato_id = $_POST['candidato'];
$como_nos_entero = implode(', ', $_POST['como_nos_entero']);

$sql = "INSERT INTO votantes (nombre_apellido, alias, rut, email, region_id, comuna_id, candidato_id, como_nos_entero)
        VALUES ('$nombre_apellido', '$alias', '$rut', '$email', '$region_id', '$comuna_id', '$candidato_id', '$como_nos_entero')";

if ($conn->query($sql) === TRUE) {
    echo "Voto registrado con éxito";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
