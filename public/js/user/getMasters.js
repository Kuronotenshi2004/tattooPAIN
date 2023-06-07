getMasters();

async function getMasters() {
    let token = localStorage.getItem("token");
    let id = location.search.split('id=')[1];

    let response = await fetch("./api/master", {
        headers: {
            Authorization: "Bearer " + token,
        },
    });
    const masters = await response.json();
    console.log(masters);

    if(response.ok){
        let text = "";
        masters.forEach(master => {
            if(id != master.id){
                text += `<a href="master?id=${master.id}">
                <div class="mast">
                    <img src="${master.img}" alt="">
                    <div class="name">
                        <p>${master.name}</p>
                    </div>
                </div>
                </a>`;
            }
        });

        document.querySelector('.masters').innerHTML = text;
    }
}
