<?php
// db.php - Connexion à la base de données

$host = 'localhost';  // Hôte de la base de données
$dbname = 'events_db';  // Nom de la base de données
$username = 'root';  // Utilisateur MySQL
$password = '';  // Mot de passe MySQL (vide par défaut sur XAMPP)

$db = new mysqli($host, $username, $password, $dbname);  // Crée la connexion à la base de données

// Vérifie la connexion
if ($db->connect_error) {
    die("Erreur de connexion à la base de données : " . $db->connect_error);
}
?>
