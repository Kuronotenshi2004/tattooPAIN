getMaster();
getMasterImg();

async function getMaster() {
    let token = localStorage.getItem("token");
    let id = location.search.split("id=")[1];

    let response = await fetch("./api/master/" + id, {
        headers: {
            Authorization: "Bearer " + token,
        },
    });
    const master = await response.json();
    console.log(master);

    if (response.ok) {
        document
            .querySelector("#foto")
            .setAttribute("src", master.img);
        document.querySelector("#name").value = master.name;
        document.querySelector("#description").value = master.description;
    }
}

async function getMasterImg() {
    let token = localStorage.getItem("token");
    let id = location.search.split("id=")[1];

    let response = await fetch("./api/master/img/" + id, {
        headers: {
            Authorization: "Bearer " + token,
        },
    });
    const img = await response.json();
    console.log(await img);

    if (response.ok) {
        let text = "";
        img.forEach((element) => {
            text += `<div class="hover-effect-btn"><img src="${element.img}" alt="">
                    <div class="overlay"></div>
                    <div class="button x" foto="${element.id}">x</div>
                </div>`;
        });
        document.querySelector(".portfolio").innerHTML += text;

        await deleteImg();
        document
            .getElementById("updateMaster")
            .addEventListener("click", async function (e) {
                e.preventDefault();

                let token = localStorage.getItem("token");
                let id = location.search.split("id=")[1];
                let input = document.getElementById("new_foto");

                /*if(await input.files[0] != null){
            alert("Выберете файл с видео!");
            return
        }*/

                let data = new FormData();
                let name = await document.getElementById("name").value,
                    description = await document.getElementById("description")
                        .value;
                data.append("_method", "patch");
                data.append("file", await input.files[0]);
                data.append("name", name);
                data.append("description", description);

                console.log(await input.files[0]);

                let response = await fetch(
                    "./api/master/" + id,
                    {
                        method: "POST",
                        body: data,
                        headers: {
                            Authorization: "Bearer " + token,
                        },
                    }
                );
                console.log(await response.json());
                if (response.ok) {
                    const files = document.querySelectorAll(".dop-img");

                    files.forEach(async (elem) => {
                        if ((await elem.files[0]) != null) {
                            let data = new FormData();
                            data.append("file", await elem.files[0]);

                            let res = await fetch(
                                "./api/master/img/" + id,
                                {
                                    method: "POST",
                                    body: data,
                                    headers: {
                                        Authorization: "Bearer " + token,
                                    },
                                }
                            );
                            if (res.ok) {
                                console.log("ok");
                            }
                        }
                    });
                    location.reload();
                }
            });
    }
}

async function deleteImg() {
    document.querySelectorAll(".x").forEach((element) => {
        element.addEventListener("click", ConfirmDelete);
    });
    async function ConfirmDelete() {
        let token = localStorage.getItem("token");
        let id = await this.getAttribute("foto");
        let flag = confirm("Удалить фото?");
        if (flag) {
            await fetch("./api/master/img/" + id, {
                method: "DELETE",
                headers: {
                    Authorization: "Bearer " + token,
                },
            });
            location.reload();
        }
    }
}
