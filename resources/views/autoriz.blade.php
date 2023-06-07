<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="img/wepik-hand-drawn-monocolor-publisher-logo-20221023-95419.svg" type="image/x-icon">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;800&display=swap" rel="stylesheet">
  <meta charset="UTF-8">
  <title>Authorization</title>
  <link rel="stylesheet" href="css/autor.css">
</head>

<body style="overflow-x: hidden;">
  <div class="decoration">
    <div class="sq1"></div>
    <div class="fraim"></div>
    <div class="sq2"></div>
    <img class="i1" src="img/autreg/IMG_1356.jfif" alt="">
    <img class="i2" src="img/autreg/e405f83492977b2c05d2ae3ed2131246.jpg" alt="">
    <img class="i3" src="img/autreg/c3aa6b05eec3c552499d2ad7037a4c33.png" alt="">
    <a onclick="javascript:history.back(-2); return falsel"><img class="arrow" src="img/icons/Arrow 2.png" alt=""></a>
  </div>
  <form>
    <h2>Авторизация</h2>
    <h3>Логин</h3>
    <input id="name" type="text" name="login">
    <h3>Пароль</h3>
    <input id="password" type="password" name="password">
    <button id="login" type="submit">Войти</button>
    <p>У вас нет аккаунта? - <a href="registr">зарегистрируйтесь</a></p>
  </form>
  <script src="/js/auth/login.js"></script>
</body>

</html>