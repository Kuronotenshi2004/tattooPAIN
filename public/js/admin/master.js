let file;
$(".input-file input[type=file]").on("change", function () {
    file = this.files[0];
    $(this).next().html(file.name);
});

document
    .getElementById("addMaster")
    .addEventListener("click", async function (e) {
        e.preventDefault();
        let token = localStorage.getItem("token");

        let input = document.getElementById("file");

        let data = new FormData();
        let name = await document.getElementById("name").value,
            description = await document.getElementById("description").value;
        data.append("file", await input.files[0]);
        data.append("name", name);
        data.append("description", description);

        console.log(await input.files[0]);

        let response = await fetch("./api/master/add", {
            method: "POST",
            body: data,
            headers: {
                Authorization: "Bearer " + token,
            },
        });
        const resJson = await response.json();
        console.log(resJson);

        const id = resJson.data.id;

        if (response.ok) {

            const files = document.querySelectorAll(".dop-img");

            files.forEach(async (elem) => {
                if(await elem.files[0] != null){
    
                let data = new FormData();
                data.append("file", await elem.files[0]);

                let res = await fetch(
                    "./api/master/img/"+id,
                    {
                        method: "POST",
                        body: data,
                        headers: {
                            Authorization: "Bearer " + token,
                        },
                    }
                );
                if (res.ok) {
                    console.log('ok');
                }
            }
            });
            location.reload();
        }
    });
