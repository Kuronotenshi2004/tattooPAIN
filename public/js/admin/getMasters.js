getMasters();

async function getMasters() {
    let token = localStorage.getItem("token");

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
            text += `<a href="master?id=${master.id}">
            <div class="mast">
                <img src="${master.img}" alt="">
                <div class="name">
                    <a href="adminredmast?id=${master.id}"><button class="red">Редактировать</button></a>
                    <button class="x" master="${master.id}">x</button>
                </div>
            </div>
            </a>`;
        });

        document.querySelector('.masters').innerHTML = text;

        await deleteMaster();
    }
}

async function deleteMaster(){
            document.querySelectorAll('.x').forEach(element => {
                element.addEventListener('click', ConfirmDelete);
            }); 
            async function ConfirmDelete(){
                let token = localStorage.getItem("token");
                let id = await this.getAttribute('master');
                let flag = confirm('Удалить мастера?');
                if(flag){
                    await fetch("./api/master/"+id, {
                        method: 'DELETE',
                        headers: {
                            Authorization: "Bearer " + token,
                        },
                    });
                    location.reload();
                }
            }
}
