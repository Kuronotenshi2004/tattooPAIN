document
    .getElementById("addRequest")
    .addEventListener("click", async function (e) {
        e.preventDefault();
        let token = localStorage.getItem("token");

        let input = document.getElementById('file');

        let data = new FormData();
        let partOfBody = await document.getElementById("partOfBody").value,
            size = await document.getElementById("size").value,
            description = await document.getElementById("description").value;
        data.append("file", await input.files[0]);
        data.append("partOfBody", partOfBody);
        data.append("size", size);
        data.append("description", description);

        console.log(await input.files[0])

        let response = await fetch("./api/request", {
            method: "POST",
            body: data,
            headers: {
                'Authorization': 'Bearer ' + token,
            },
        });
        document.getElementById("partOfBody").value = '';
        document.getElementById("size").value = '';
        document.getElementById("description").value = '';
        console.log(await response.json())
        if(response.ok){
            location.reload();
        }
    });
