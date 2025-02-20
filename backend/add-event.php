<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $title = $_POST['title'];
    $description = $_POST['description'];
    $date_time = $_POST['date_time'];
    $location = $_POST['location'];
    $max_participants = $_POST['max_participants'];

    $stmt = $pdo->prepare("INSERT INTO events (title, description, date_time, location, max_participants) VALUES (?, ?, ?, ?, ?)");
    $stmt->execute([$title, $description, $date_time, $location, $max_participants]);

    echo json_encode(["message" => "Événement ajouté"]);
}
?>
