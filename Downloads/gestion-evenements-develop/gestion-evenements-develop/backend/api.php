<?php
include 'db.php';

header('Content-Type: application/json');

$stmt = $pdo->query("SELECT * FROM events ORDER BY date_time ASC");
echo json_encode($stmt->fetchAll(PDO::FETCH_ASSOC));
?>
