let requests = document.querySelectorAll(".btn button");

if (requests[0] != undefined) {
    requests.forEach((request) => {
        request.addEventListener("click", async function () {
            let token = localStorage.getItem("token"), 
            id = await request.getAttribute('count');
            
            let data = new FormData();
            let text = document.getElementById('text' + id).value;
            data.append("text", text);
            let response = await fetch(
                "./api/request/" + id,
                {
                    method: 'POST',
                    headers: {
                        Authorization: "Bearer " + token,
                    },
                    body: data,
                }
            );
            if(response.ok){
                location.reload();
            }
            console.log(await response.json());
        });
    });
} else {
    requests.addEventListener("click", async function () {
        let token = localStorage.getItem("token");
            let data = new FormData();
            let text = document.getElementById('text' + await requests.getAttribute('count')).value;
            data.append("text", text);
            let response = await fetch(
                "./api/request/" + await requests.getAttribute('count'),
                {
                    method: 'POST',
                    headers: {
                        Authorization: "Bearer " + token,
                    },
                    body: data,
                }
            );
            if(response.ok){
                location.reload();
            }
            console.log(await response.json());
    });
}
