<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'vendor/autoload.php';

function sendEmail($to, $subject, $body) {
    $mail = new PHPMailer(true);
    try {
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'tuckmansing2004@gmail.com';
        $mail->Password = 'suckmycockitshardlikearock1234';
        $mail->SMTPSecure = 'tls';
        $mail->Port = 587;

        $mail->setFrom('tuckmansing2004@gmail.com', 'Gestion Evenements');
        $mail->addAddress($to);
        $mail->Subject = $subject;
        $mail->Body = $body;
        $mail->send();
    } catch (Exception $e) {
        echo "Erreur d'envoi de mail: {$mail->ErrorInfo}";
    }
}
?>
