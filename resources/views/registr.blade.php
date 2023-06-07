<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration</title>
  <link rel="shortcut icon" href="img/wepik-hand-drawn-monocolor-publisher-logo-20221023-95419.svg" type="image/x-icon">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/regist.css">
</head>

<body style="overflow-x: hidden;">

  <form>
    <h2>Регистрация</h2>
    <h3>Имя пользователя</h3>
    <input id="name" type="text" name="name">
    <h3>Почта</h3>
    <input id="email" type="email" name="email">
    <h3>Пароль</h3>
    <input id="password" type="password" name="password">
    <button id="createUser">Войти</button>
    <p>Уже есть аккаунт? - <a href="autoriz">авторизируйтесь</a></p>
  </form>
  <div class="decoration">
    <div class="sq1"></div>
    <div class="fraim"></div>
    <div class="sq2"></div>
    <img class="i1" src="img/autreg/IMG_1356.jfif" alt="">
    <img class="i2" src="img/autreg/e405f83492977b2c05d2ae3ed2131246.jpg" alt="">
    <img class="i3" src="img/autreg/c3aa6b05eec3c552499d2ad7037a4c33.png" alt="">
    <a onclick="javascript:history.back(-2); return falsel"><img class="arrow" src="img/icons/Arrow 2.png" alt=""></a>
  </div>
  <script src="/js/auth/regist.js"></script>
</body>
</html>