<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="login.php">
    <title>Document</title>
</head>
<body>
<div class="nav">
    <div class="logo">
        <p> <a href="phones.php"Logo </a> </p>
    </div>
</div>

<div class="container">
    <div class="box form-box">
        <header>Change Profile</header>
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
                <input type="submit" class="btn" name="submit" value="Change" autocomplete="off" required>
            </div>
        </form>
    </div>
</div>
</body>
</html>

<?php
