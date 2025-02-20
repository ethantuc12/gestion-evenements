<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Supercar</title>
    <link rel = "icon" href = "../Image/icon1.png" 
        type = "image/x-icon">
    <link rel="stylesheet" type="text/css" href="../style/Evenement.css"/>
    <link rel="stylesheet" href="../style/Navbar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-9X3q2Y1+D/7VkcE+mRjL7Jz2cTfjJbR8Gx9XVGvY04ER0ZJjLs8Wwq0sD4yKjDh1i4/aW0myX29vHkOiy/oZLQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<?php include('header.php'); ?>

<?php
  include("db.php");

  // Récupérer le nombre d'événements arrivant à échéance
$date_today = date("Y-m-d");
$sql_count = "SELECT COUNT(*) AS total FROM evenement WHERE date_echeance >= '$date_today'";
$result_count = $db->query($sql_count);
$row_count = mysqli_fetch_assoc($result_count);
$nombre_evenements_echeance = $row_count['total'];

  // Récupère les voitures de la base de données
  $sql = "SELECT * FROM evenement";
  $result = $db->query($sql);

  echo "<font color='white' size='5px'>
  <center><br><br><br><br>
      <h1>Les Événements où nous participons</h1>
      <h3>Nombre d'événements actif : $nombre_evenements_echeance</h3>
  </center>
    
    <table cellspacing='30' width='90%'>";

    while ($row = mysqli_fetch_assoc($result)) {
      $image = $row["Image"];
      $petit_txt = $row["Petit_txt"];
      $date_debut = $row["date_debut"];
      $date_echeance = $row["date_echeance"];
      $id = $row["id_eve"];
      
      echo "<tr><td align='justify'>
              <div class='container'>
                  <img src='$image' class='img'>
                  <div class='overlay' align='center'>
                      <a href='eve_spec.php?id_eve=$id'>
                          <div class='bn5'>En savoir plus</div>
                      </a>  
                  </div>
              </div>
          </td >
          <td>
              $petit_txt <br>
              <strong>Date de début:</strong> $date_debut <br>
              <strong>Date d'échéance:</strong> $date_echeance
          </td>
      </tr>";
  }
  
  echo "</table>";
?>




</body>
</html>