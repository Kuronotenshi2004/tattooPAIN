let users = document.querySelectorAll(".ban");
let i = 0;
if (users[0] != undefined) {
    users.forEach((user) => {
        user.addEventListener("click", async function (i) {
            let token = localStorage.getItem("token");
            let response = await fetch(
                "./api/user/ban/" + user.getAttribute('count'),
                {
                    headers: {
                        Authorization: "Bearer " + token,
                    },
                }
            );
            if(response.ok){
                let btn = document.getElementById('btn' + user.getAttribute('count'));
                if(btn.textContent == "Забанить"){
                    btn.textContent = "Разбанить"
                } else {
                    btn.textContent = "Забанить"
                }
            }
            console.log(await response.json());
        });
        i++;
    });
} else {
    users.addEventListener("click", async function () {
        let token = localStorage.getItem("token");
        let response = await fetch(
            "./api/user/ban/" + users.getAttribute('count'),
            {
                headers: {
                    Authorization: "Bearer " + token,
                },
            }
        );
        if(response.ok){
            let btn = document.getElementById('btn' + users.getAttribute('count'));
            if(btn.textContent == "Забанить"){
                btn.textContent = "Разбанить";
                
            } else {
                btn.textContent = "Забанить";
                
            }
        }
        console.log(await response.json());
    });
}
