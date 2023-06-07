<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/adminpols.css">
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
        @foreach ($users as $user)

        @if ($user['admin'] != 1)
            <div class="polz ban" count="<?=$user['id']?>">
                <p><?=$user['name']?></p>
                <p><?=$user['email']?></p>
                <div class="btn"><button id="btn<?=$user['id']?>"><?=$user['ban'] == 1 ? "Разбанить" : "Забанить"?></button></div>
            </div> 
        @endif
        
        @endforeach   
    </div>
    <script src="/js/admin/user.js"></script>
</body>

</html>