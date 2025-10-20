<?php
require_once __DIR__ . '/config.php';

echo "<h2> PHP + PostgreSQL en Render</h2>";

try {
    $stmt = $pdo->query("SELECT NOW()");
    $fecha = $stmt->fetchColumn();
    echo "<p>✅ Conectado a PostgreSQL correctamente.</p>";
    echo "<p><strong>Fecha actual del servidor:</strong> $fecha</p>";
} catch (PDOException $e) {
    echo "<p>❌ Error al ejecutar consulta: " . $e->getMessage() . "</p>";
}
