<?php
include 'db.php';
include 'sendmail.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $event_id = $_POST['event_id'];
    $email = $_POST['email'];

    $stmt = $pdo->prepare("INSERT INTO registrations (event_id, email) VALUES (?, ?)");
    $stmt->execute([$event_id, $email]);

    sendEmail($email, "Inscription confirmée", "Vous êtes inscrit à l'événement !");
}
?>
