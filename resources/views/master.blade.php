<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/master.css">
    <title>Master</title>

</head>

<body style="overflow-x: hidden;">

    <header>

        <nav>
            <div class="nav1">

                <li><a class="main" href="/">Главная</a></li>
                <li><a class="master" href="#mastersid">Мастера</a></li>
                <li><a class="portf" href="#portfolioid">Портфолио</a></li>
            </div>
            <div class="theader"><a href="/"><img class="logotip" src="img/icons/wEfh3IkjzEU_(1)-transformed.png"
                    alt="картинку съел таракан"></a>

            </div>
            <div class="nav2">
                <li><a class="entry" href="autoriz">Вход</a></li>
                <li><a class="exit" href="#">Выход</a></li>
                <li> <a class="reg" href="registr">Регистрация</a></li>
                <li> <a class="cab" href="#">Личный кабинет</a></li>
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
                                    <li><a class="master1" href="#mastersid">Мастера</a></li>
                                    <li><a class="portf1" href="#portfolioid">Портфолио</a></li>
                                    <li><a class="entry1" href="autoriz">Вход</a></li>
                                    <li><a class="exit1" href="#">Выход</a></li>
                                    <li> <a class="reg1" href="registr">Регистрация</a></li>
                                    <li> <a class="cab1" href="#">Личный кабинет</a></li>
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

    <div class="container1">
        <div class="icons"><img src="img/icons/icons8-youtube-play-50.png" alt=""> <img
            src="img/icons/icons8-vk-в-круге-50.png" alt=""><img src="img/icons/icons8-телеграм-50.png" alt="">
    </div>
        <img class="mastfoto" src="" alt="">
        <div class="black"></div>
        <div class="blacktext">
            <h1></h1>
            <p></p>
            <a href="registr"><button>Записаться</button></a>
        </div>
        
    </div>
    
    <div class="container2" id="portfolioid">
        <hr>
        <h2>ПОРТФОЛИО</h2>
        <div class="dots"><img src="img/icons/Ellipse 1.png" alt=""><img src="img/icons/Ellipse 1.png" alt=""><img
                src="img/icons/Ellipse 1.png" alt=""></div>
                <div class="portfolio">
                </div>
    </div>
    <a href="../registr" id="ifUserHidde">
      <div class="container3">
        <h2>ХОТИТЕ ЗАПИСАТЬСЯ НА СЕАНС?</h2>
        <h3>Зарегистрируйтесь, чтобы мы могли с вами связаться.</h3>
    </div>  
    </a>
    

    <div class="container4" id="mastersid">
        <h2>ДРУГИЕ МАСТЕРА</h2>
        <div class="dots"><img src="img/icons/Ellipse 1.png" alt=""><img src="img/icons/Ellipse 1.png" alt=""><img
                src="img/icons/Ellipse 1.png" alt=""></div>
        <div class="masters">
            <a href="master"><div class="mast">
                <img src="img/masters/1654137987_8-o-tendencii-com-p-tatu-master-devushka-foto-8333.jpg" alt="">
                <div class="name">
                    <p>Татьяна</p>
                </div>
            </div>
            </a>

        </div>

    </div>
    <footer>
        <a href="/"><h1>PAIN</h1></a>
        <div class="contacts">
            <div class="ficons"><a href="#"><img src="img/icons/icons8-youtube-play-50.png" alt=""></a> <a href="#"><img
                src="img/icons/icons8-vk-в-круге-50.png" alt=""></a><a href="#"><img src="img/icons/icons8-телеграм-50.png" alt=""></a>
        </div>
            <p class="nmbr">8 800 555 35 35</p>
            <p class="adress">улица Шелгунова, 9, Астрахань</p>
        </div>
    </footer>
    <script src="/js/auth/checkForIndex.js"></script>
    <script src="/js/user/getMaster.js"></script>
    <script src="/js/user/getMasters.js"></script>
    <script src="/js/auth/logout.js"></script>
</body>
</html>