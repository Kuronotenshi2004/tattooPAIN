document.getElementById("logout")
    .addEventListener("click", logout);
document.getElementById("logout2")
    .addEventListener("click", logout);
async function logout() {
    let token = localStorage.getItem("token");
    let rez = await fetch("./api/logOut", {
        headers: {
            'Authorization': 'Bearer ' + token,
            "Content-Type": "application/json",
        },
    });
    console.log(await rez.json())
    localStorage.removeItem('token')
    if(localStorage.getItem("admin")){
        localStorage.removeItem("admin");
    }
    window.location.href = '/';
}