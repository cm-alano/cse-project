var APIServices = {
    PersonList: [],
    Applicant: {},
    isDeleted: false,
    GetPersonList: function () {
        $.ajax({
            type: "GET",
            url: "https://localhost:7087/api/GetApplicants",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (data) {
                APIServices.PersonList = JSON.parse(JSON.stringify(data));
            }, error: function (e) {
                console.log("Error in GetPersonList!");
            }
        });
    },

    AddApplicant: function (objPerson) {
        APIServices.Applicant = objPerson;
        $.ajax({
            type: "POST",
            url: "https://localhost:7087/api/InsertApplicant",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            data: JSON.stringify(objPerson),
            async: false,
            success: function (data) {
               
            }, error: function (e) {
                console.log("Error in AddApplicant!");
            }
        });
    },

    DeleteApplicant: function (ApplicantID) {
        
        $.ajax({
            type: "POST",
            url: "https://localhost:7087/api/DeleteApplicant?personId="+ApplicantID,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (data) {
                APIServices.isDeleted = true;
            }, error: function (e) {
                console.log("Error in DeleteApplicant!");
            }
        });
    }
//UpdatePerson: function (objPerson) {
//    return new Promise((resolve, reject) => {
//        $.ajax({
//            type: "PUT",
//            url: "https://localhost:7087/api/UpdatePerson",
//            contentType: "application/json; charset=utf-8",
//            data: JSON.stringify(objPerson),
//            dataType: "json",
//            success: function (data) {
//                resolve(data);
//            },
//            error: function (e) {
//                console.error("Error in UpdatePerson:", e);
//                reject(e);
//            }
//        });
//    });
//}
};