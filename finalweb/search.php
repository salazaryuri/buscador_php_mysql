<?php
include 'connection.php';

$pais       = isset($_POST['pais']) ? $_POST['pais'] : "todos";
$ciudad     = isset($_POST['ciudad']) ? $_POST['ciudad'] : "todos";
$precio     = isset($_POST['precio']) ? $_POST['precio'] : "0-150000";
$tipo       = isset($_POST['tipo']) ? $_POST['tipo'] : "todos";

// Validar y dividir el rango de precios
if (strpos($precio, "-") !== false) {
    list($precio_min, $precio_max) = explode("-", $precio);
} else {
    $precio_min = 0;
    $precio_max = 150000;
}

$where = " WHERE 1 ";

if ($pais !== "todos") {
    $where .= " AND pais = '$pais'";
}
if ($ciudad !== "todos") {
    $where .= " AND ciudad = '$ciudad'";
}
if ($tipo !== "todos") {
    $where .= " AND tipo = '$tipo'";
}
$where .= " AND precio BETWEEN $precio_min AND $precio_max";

$sql = "SELECT * FROM houses" . $where;

// Imprimir la consulta para pruebas
// echo $sql;

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo '<div class="property-card">';
        echo '  <img src="img/' . $row['foto'] . '.jpg" alt="Casa">';
        echo '  <div class="property-info">';
        echo '    <p><strong>Dirección:</strong> ' . $row['direccion'] . '</p>';
        echo '    <p><strong>Ciudad:</strong> ' . $row['ciudad'] . '</p>';
        echo '    <p><strong>Teléfono:</strong> ' . $row['telefono'] . '</p>';
        echo '    <p><strong>Código Postal:</strong> ' . $row['codigo_postal'] . '</p>';
        echo '    <p><strong>Precio:</strong> $' . number_format($row['precio']) . '</p>';
        echo '    <p><strong>Tipo:</strong> ' . $row['tipo'] . '</p>';
        echo '  </div>';
        echo '</div>';
    }
} else {
    echo '<p>No se encontraron propiedades.</p>';
}
?>
