<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/adminredmast.css">
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
    <form>
        <div class="container4" id="mastersid">
            <div class="obsh">
                <h3>Имя</h3>
                <input id="name" type="text" name="name">
                <h3>Общая информация</h3>
                <textarea id="description" name="description"></textarea>
                <a onclick="javascript:history.back(-2); return falsel"><img class="arrow" src="img/icons/Arrow 2.png"
                        alt=""></a>
            </div>
            <div class="photo">
                <h3>Фото мастера</h3>
                <label class="input-file">
                    <input id="file" type="file" name="file">
                    <span>Выберите файл</span>
                </label>
                
            </div>
            <div class="portfolioadm">
                <div class="butts">
                    <h3>Портфолио</h3>
                    <label class="input-file">
                        <input class="dop-img" type="file" name="file">
                        <span>Выберите файл</span>
                    </label>
                    <label class="input-file">
                        <input class="dop-img" type="file" name="file">
                        <span>Выберите файл</span>
                    </label>
                    <label class="input-file">
                        <input class="dop-img" type="file" name="file">
                        <span>Выберите файл</span>
                    </label>
                    <label class="input-file">
                        <input class="dop-img" type="file" name="file">
                        <span>Выберите файл</span>
                    </label>
                    <label class="input-file">
                        <input class="dop-img" type="file" name="file">
                        <span>Выберите файл</span>
                    </label>
                    <label class="input-file">
                        <input class="dop-img" type="file" name="file">
                        <span>Выберите файл</span>
                    </label>
                    <label class="input-file">
                        <input class="dop-img" type="file" name="file">
                        <span>Выберите файл</span>
                    </label>
                    <button id="addMaster" style="margin-left: -6vw; margin-top: 2vw">Добавить мастера</button>
                </div>
                
            </div>
            
    </div>
    </form>
    <script src="https://snipp.ru/cdn/jquery/2.1.1/jquery.min.js"></script>
    <script src="/js/admin/master.js"></script>

</body>

</html>