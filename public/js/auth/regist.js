if(localStorage.getItem("token") != null){
    window.location.href = 'personal';
}
document.getElementById("createUser")
        .addEventListener("click", async function (e) {
        e.preventDefault();
        
        let name = await document.getElementById("name").value.trim(),
            email = await document.getElementById("email").value.trim(),
            password = await document.getElementById("password").value.trim();
        if(await name == ""){
            alert("Введите login!")
            return;
        }
        if(await email == ""){
            alert("Введите почту!")
            return;
        } else {
            const validateEmail = (email) => {
                return email.match(
                  /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
                );
            };
            if(!validateEmail(email)){
                alert("Почта не корректна!")
                return;
            }
        }
        if(await password == ""){
            alert("Введите пароль!")
            return;
        }
        let user = {
            name: name,
            email: email,
            password: password,
        };
        console.log(user);

        let response = await fetch("/api/create", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(user),
        });

        let result = await response.json();
        if(response.ok){
            localStorage.setItem("token", await result.data.user_token);
            window.location.href = 'personal';
        } else {
            alert("Произошла ошибка!")
        }
    });