<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Telefoons</title>
    <link rel="stylesheet" href="css/PhonesPhP.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<nav class="navbar">
    <ul>
        <li><a href="phones.php">Home</a></li>
        <li><a href="contact.php">Contact</a></li>
        <li><a href="login.php">LogIn</a></li>
    </ul>
</nav>
<h2>Telefoon Overzicht</h2>

<?php
try {
    $db = new PDO("mysql:host=localhost; dbname=phone4retail2", "root", "");
    $id = $_GET ["id"];
    // dit is een suberglobal die "id" gaat koppelen aan $id
    $query = $db->prepare('SELECT * FROM phone WHERE merk_id = :id');
    // hier selecteer je van de database ID van het tabel PHONE
    $query->bindParam('id', $id);
    // hier gebruik je de functie bind param om $id te binden aan het id van phone tabel
    $query->execute();
    $result = $query->fetchAll(PDO::FETCH_ASSOC);
    foreach ($result as $item) {
        echo '<a href="detail.php?id=' . $item["id"] . '">';
        echo '<img class="image-css" src="' . htmlspecialchars($item['image']) . '" />';
        echo '</a>';
    }
} catch (PDOException $e) {
    die($e->getMessage());
}
?>
</table>
</body>
</html>
