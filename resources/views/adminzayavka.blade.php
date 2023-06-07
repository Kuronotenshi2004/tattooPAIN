<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/adminzayavka.css">
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
    <div class="container4">
        @foreach ($requests as $request)
        @if ($request['status'] == 0)
        <div class="zayavka" style="position: relative;">
            <div class="polz">
                <p><?= $request["name"] ?></p>
                <p><?= $request["email"] ?></p>
                <p><?= $request["created_at"] ?></p>
            </div>
            <img style="width: 15vw; height: 10vw; position: absolute; top: 4vw; right: 30vw;" src="<?= $request["img"] ?>">
            <div class="telo">
                <p>Часть тела:</p>
                <p><?= $request["partOfBody"] ?></p>
            </div>
            <div class="size">
                <p>Размер:</p>
                <p><?= $request["size"] ?></p>
            </div>
            <div class="dop">
                <p>Дополнительно:</p>
                <p><?= $request["description"] ?></p>
            </div>
            <div class="otvet">
                <div class="text">
                    <p>Ответ мастера:</p>
                    <textarea id="text<?=$request["id"]?>" name="otv"></textarea>
                </div>
                <div class="btn"><button count="<?=$request["id"]?>">Отправить</button></div>
            </div>
        </div>
        @endif
        @endforeach
    </div>
    <script src="js/admin/request.js"></script>
</body>
</html>