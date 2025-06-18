<?php

try {
    $db = new PDO("mysql:host=localhost;dbname=phone4retail2", "root", "");
    $id = $_GET['id'];
    $query = $db->prepare("SELECT * FROM phone WHERE id = :id");
    $query->bindParam(":id", $id);
    $query->execute();
    $result = $query->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    die("Error!:" . $e->getMessage());
}
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/detail.css">
    <title>Document</title>
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
    <h1>
        <?php foreach ($result as $item) {
            echo '<img class="sigma" alt="" src="' . $item['image'] . '" />' . "<br>";
            echo $item["model"] . "<br>";
            echo $item["beschrijving"];
        } // hier heb je een foreach loop die details toevoegd vanuit het database
        ?>
    </h1>
</header>
<main>
    <h2>Plaats een review!</h2>
    <form action="" method="POST">
        <div class="contact-form">
            <label for="n"> Naam</label>
            <input type="text" id="n" name="name" placeholder="Je naam">
            <textarea name="review" placeholder="Je bericht" rows="4" required></textarea>
            <input type="submit" name="send" value="verzenden">
    </form>
    </div>
</main>
<footer>

    <?php
    $NAME_REQUIRED = 'naam invullen';
    $REVIEW_REQUIRED = 'Review invullen';
    $AGREE_REQUIRED = 'Voorwaarden accepteren';
    // dit zijn variablen die het text als value hebben

    $errors = [];
    $inputs = [];
    // lege array variables


    if (isset($_POST["send"])) {
        $name = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_SPECIAL_CHARS);
        $name = trim($name);
        if (empty($name)) {
            $errors['name'] = $NAME_REQUIRED;
        } else {
            $inputs['name'] = $name;
        } // hier filter je $naam zodat je geen special characters kan toevoegen
        $review = filter_input(INPUT_POST, 'review', FILTER_SANITIZE_SPECIAL_CHARS);
        $review = trim($review);
        if (empty($review)) {
            $errors['review'] = $REVIEW_REQUIRED;
        } else {
            $inputs['review'] = $review;
        } // hier filter je $review zodat je geen special characters kan toevoegen

        $sql = $db->prepare('INSERT INTO reviews (name, review, phone_id) VALUES (:name, :review, :phone_id)');
        // hier prepare je het database om nieuwe informatie te inserten

        $sql->bindParam(':name', $name);
        $sql->bindParam(':review', $review);
        $sql->bindParam(':phone_id', $id);

        $result = $sql->execute();
    }  // hier execute je het zodat het informatie in de database word insert
    $conn = null;
    ?>
</footer>
</body>
</html>


