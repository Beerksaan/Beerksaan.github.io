<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/login.css">
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

<div class="container">
    <div class="box form-box">
        <header>Login</header>
        <form action="" method="post">
            <div class="field input">
                <label for="username">Username</label>
                <input type="text" name="username" id="username" autocomplete="off" required>
            </div>

            <div class="field input">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" autocomplete="off" required>
            </div>

            <div class="field">
                <input type="submit" class="btn" name="submit" value="login" autocomplete="off" required>
            </div>
            <div class="links">
                Dont have an account? <a href="register.php">Sign up now</a>
            </div>
        </form>
    </div>
</div>

</body>
</html>

<?php ?>

