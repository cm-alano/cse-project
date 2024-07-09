var APIServices = {
    PersonList:[],
    GetPersonList: function(){
        $.ajax({
            type:"GET",
            url: "https://localhost:7087/api/GetPersonList",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (data) {
                APIServices.PersonList = JSON.parse(JSON.stringify(data));
            }, error: function (e) { console.log("Error in GetPersonList!"); }
        });
    },
    AddApplicant: function (objPerson) {
        $.ajax({
            type: "POST",
            url: "https://localhost:7087/api/InsertPerson",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            data: objPerson,
            async: false,
            success: function (data) {
                
            }, error: function (e) { console.log("Error in GetPersonList"); }
        });
    }
}