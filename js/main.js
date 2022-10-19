(() => {

    const button = document.querySelectorAll(".button");
    let thermopanel;

    // using get data and show data  and build using fetch API

    function buildData(data) {
        let thermopanel = Object(data);
    }


    function getData() {
        fetch("./data.json")
            .then(res => res.json())
            .then(data => {

                thermopanel = data;

            })

        // for catching the error
        .catch(error => console.error(error));
    }

    //debugger;

    function showData(event) {

        let key = event.target.dataset.list;
        console.log(key);

        buildData();
        console.log(thermopanel);

        let colorImg = document.querySelector(".productimg");


        colorImg.src = `images/${thermopanel[key].photo}`;

    }

    getData();

    button.forEach(button => button.addEventListener("click", showData));

})();