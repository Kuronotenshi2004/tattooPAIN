if (localStorage.getItem("token") != null) {
    window.location.href = "personal";
}

document.getElementById("login").addEventListener("click", async function (e) {
    e.preventDefault();

    let name = await document.getElementById("name").value.trim(),
        password = await document.getElementById("password").value.trim();
    if ((await name) == "") {
        alert("Введите login!");
        return;
    }
    if ((await password) == "") {
        alert("Введите пароль!");
        return;
    }
    let user = {
        name: name,
        password: password,
    };
    console.log(user);

    let response = await fetch("/api/logIn", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify(user),
    });

    if (response.ok) {
        let result = await response.json();
        localStorage.setItem("token", await result.data.user_token);
        if ((await result.data.user) == 1) {
            window.location.href = "adminzayavka";
            localStorage.setItem("admin", true);
            return;
        }
        window.location.href = "personal";
    } else {
        let result = await response.json();
        if (result.data != null) {
            if (result.data.ban == 1) {
                alert("Вы забанены, обратитесь к администратору");
                return;
            }
        }
        alert("Проверьте ввод данных!");
    }
});
