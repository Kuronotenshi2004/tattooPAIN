if (localStorage.getItem("token") != null) {
    document.querySelector('.entry').textContent = 'Выход';
    document.querySelector('.entry1').textContent = 'Выход';
    document.querySelector('.entry').href = '#';
    document.querySelector('.entry1').href = '#';
    document.querySelector('.entry').id = 'logout';
    document.querySelector('.entry1').id = 'logout';
    document.querySelector('.reg').textContent = 'Личный кабинет';
    document.querySelector('.reg1').textContent = 'Личный кабинет';
    document.querySelector('.reg').href = '/personal';
    document.querySelector('.reg1').href = '/personal';
    if (localStorage.getItem("admin")) {
        document.querySelector('.reg').textContent = 'Админка';
        document.querySelector('.reg1').textContent = 'Админка';
        document.querySelector('.reg').href = '/adminzayavka';
        document.querySelector('.reg1').href = '/adminzayavka';
    }
    document.getElementById('ifUserHidde').style.display = 'none';
}