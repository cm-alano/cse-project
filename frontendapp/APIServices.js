var APIServices = {
    PersonList: [],
    Applicant: {},
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
        APIServices.Applicant = objPerson;

        $.ajax({
            type: "POST",
            url: "https://localhost:7087/api/InsertApplicant",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(objPerson),
            dataType: "json",
            async: false,
            success: function (data) {
                
            }, error: function (e) { console.log("Error in AddApplicant!"); }
        });
    }
}