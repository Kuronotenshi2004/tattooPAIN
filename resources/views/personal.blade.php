<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/personal.css">
    <title>Master</title>

</head>

<body style="overflow-x: hidden;">

    <header>

        <nav>
            <div class="nav1">

                <li><a class="main" href="/">Главная</a></li>
                <li><a class="master" href="../#mastersid">Мастера</a></li>
                <li><a class="portf" href="../#portfolioid">Портфолио</a></li>
            </div>
            <div class="theader"><a href="/"><img class="logotip"
                        src="img/icons/wEfh3IkjzEU_(1)-transformed.png" alt="картинку съел таракан"></a>

            </div>
            <div class="nav2">
                <li><a id="logout" class="entry" href="#">Выход</a></li>
                <li><a class="exit" href="#">Вход</a></li>
                <li> <a class="reg" href="#">Личный кабинет</a></li>
                <li><a class="number" href="#">8 800 555 35 35</a></li>

            </div>
            <div class="container">
                <div class="phone">
                    <div class="content">

                        <nav role="navigation">
                            <div id="menuToggle">
                                <input type="checkbox" />
                                <span></span>
                                <span></span>
                                <span></span>
                                <ul id="menu">
                                    <li><a class="main1" href="/">Главная</a></li>
                                    <li><a class="master1" href="../#mastersid">Мастера</a></li>
                                    <li><a class="portf1" href="../#portfolioid">Портфолио</a></li>
                                    <li><a id="logout2" class="entry1" href="#">Выход</a></li>
                                    <li><a class="exit1" href="#">Вход</a></li>
                                    <li> <a class="reg1" href="#">Личный кабинет</a></li>
                                    <li><a class="number1" href="#">8 800 555 35 35</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>



            </div>
        </nav>

    </header>

    <div class="container1" id="loadReq">
    </div>


    <div class="container3">
        <form>
            <div class="ob"><div class="first">
                <h2>Записаться на сеанс</h2>
                <h3>На какой части тела будет Ваша татуировка?</h3>
                <input id="partOfBody" type="text" name="telo">
                <h3>Какого она будет размера? (укажите в сантиметрах)</h3>
                <input id="size" type="number" name="size">
                <h3>Загрузите файл с примером желаемой татуировки</h3>
                <label class="input-file">
                    <input id="file" type="file" name="file">		
	   	            <span>Выберите файл</span>
                </label>
            </div>


            <div class="info">
                <h3>Что еще нам нужно узнать о Вашей татуировке?</h3>
                <textarea id="description" name="dopinfo"></textarea>
                <button id="addRequest">Оставить заявку</button>
            </div></div>
        </form>
    </div>
    <script src="https://snipp.ru/cdn/jquery/2.1.1/jquery.min.js"></script>
    <script src="/js/auth/logout.js"></script>
    <script src="/js/auth/checkUser.js"></script>
    <script src="/js/user/request.js"></script>
    <script src="/js/user/getRequest.js"></script>
    <script>
        $('.input-file input[type=file]').on('change', function () {
            let file = this.files[0];
            $(this).next().html(file.name);
        });
    </script>
</body>

</html>