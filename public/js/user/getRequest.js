getRequest();

async function getRequest() {
    let token = localStorage.getItem("token");

    let response = await fetch("./api/request/user", {
        headers: {
            Authorization: "Bearer " + token,
        },
    });
    const requests = await response.json();
    console.log(await requests);

    if(response.ok){
        let text = "";
        requests.forEach(element => {
            text += `<h2>Ваш запрос с татуировкой `;
            if(element["status"] == 0){
                text += `ожидает ответа мастера...</h2>`;
            } else {
                text += `принят. <br>Ответ мастера: ${element["master"]}</h2>`;
            }
        });
        document.querySelector('#loadReq').innerHTML += text;
    }
}
