var HomeController = {
    PersonList:[],
    GetPersonList: function(){
        $.ajax({
            type:"GET",
            url: "https://localhost:7087/api/GetPersonList",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (data) {
                HomeController.PersonList = JSON.parse(JSON.stringify(data));
            }, error: function (e) { console.log("Error in GetPersonList!"); }
        });

    }
}