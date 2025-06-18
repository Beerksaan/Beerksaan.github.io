<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/PhonesPhP.css">
</head>
<body>
<nav class="navbar">
    <ul>
        <li><a href="phones.php">Home</a></li>
        <li><a href="contact.php">Contact</a></li>
        <li><a href="login.php">LogIn</a></li>
        <li><a href="loggedin.php">Profile</a></li>
    </ul>
</nav>
<header>
    <div class="Intro">
        <h1>Welcome op Phones4Retail</h1>
        <p>De beste 2e hands telefoon winkel van heel nederland </p>
    </div>
</header>
<main>
    <h2> Zie hier onder de telefoon merken!</h2>
</main>
<div class="image-wrapper">
    <footer>
        <?php
        try {
            $conn = new PDO('mysql:host=localhost;dbname=phone4retail2', 'root', '');
            //connectie aan database
            $query = $conn->prepare("SELECT * FROM brand");
            $query->execute();
            // hier bereid je de datanse en daarna voer je het toe
            $result = $query->fetchAll(PDO::FETCH_ASSOC);
            // alle tabellen fetchen die verbonden zijn aan query
            foreach ($result as $item) {
                echo '<a href="products.php?id=' . $item['id'] . '">';
                echo '<img class="image-css" src="' . htmlspecialchars($item['image']) . '" />';
                //htmlspecialchars is dat speciale characters worden verwerkt in html
                echo '</a>';
            }
        } catch (PDOException $e) {
            die($e->getMessage());
        }
        // TRY CATCH DIE is een command die je database connectie probeert en als een error is zie je het error met meer overzicht
        ?>
    </footer>
</div>
<script src="js/main.js"></script>
</body>
</html>