getMaster();
getMasterImg();

async function getMaster() {
    let token = localStorage.getItem("token");
    let id = location.search.split('id=')[1];

    let response = await fetch("./api/master/" + id, {
        headers: {
            Authorization: "Bearer " + token,
        },
    });
    const master = await response.json();
    console.log(master);

    if(response.ok){
        document.querySelector('.mastfoto').setAttribute('src', master.img);
        document.querySelector('.blacktext > h1').textContent = master.name;
        document.querySelector('.blacktext > p').textContent = master.description;
    }
}

async function getMasterImg() {
    let token = localStorage.getItem("token");
    let id = location.search.split('id=')[1];

    let response = await fetch("./api/master/img/" + id, {
        headers: {
            Authorization: "Bearer " + token,
        },
    });
    const img = await response.json();
    console.log(await img);

    if(response.ok){
        let text = "";
        img.forEach(element => {
            text += `<img src="${element.img}" alt="">`;
        });
        document.querySelector(".portfolio").innerHTML = text;
    }
}
