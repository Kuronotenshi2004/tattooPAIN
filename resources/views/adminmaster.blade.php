<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/adminmaster.css">
    <title>Master</title>

</head>

<body style="overflow-x: hidden;">

    <header>

        <nav>
            <div class="nav1">

                <li><a class="main" href="adminpols">Пользователи</a></li>
                <li><a class="master" href="adminmaster">Мастера</a></li>
            </div>
            <div class="theader"><a href="/"><img class="logotip"
                        src="img/icons/wEfh3IkjzEU_(1)-transformed.png" alt="картинку съел таракан"></a>
            </div>
            <div class="nav2">
                <li> <a class="reg" href="adminzayavka">Заявки</a></li>
            </div>
        </nav>
    </header>

    <div class="container4" id="mastersid">
        <a href="adminaddmast"><h2>Добавить мастера</h2></a>
        
        <div class="masters">
            <a href="master">
                <div class="mast">
                    <img src="img/masters/1654142324_46-o-tendencii-com-p-devushka-v-tatu-salone-foto-50.jpg" alt="">
                    <div class="name">
                        <a href="adminredmast"><button class="red">Редактировать</button></a>
                        <button class="x">x</button>
                    </div>
                </div>
            </a>
        
        </div>
        <script src="/js/admin/getMasters.js"></script>
</body>

</html>