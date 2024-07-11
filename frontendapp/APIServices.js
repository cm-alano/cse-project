var APIServices = {
    PersonList: [],
    Applicant: {},

    GetPersonList: function () {
        return new Promise((resolve, reject) => {
            $.ajax({
                method: "GET",
                url: "https://localhost:7087/api/GetApplicants",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    APIServices.PersonList = data;
                    resolve(data);
                },
                error: function (e) {
                    console.error("Error in GetPersonList:", e);
                    reject(e);
                }
            });
        });
    },

    GetPersonList: function () {
        return new Promise((resolve, reject) => {
            $.ajax({
                method: "GET",
                url: "https://localhost:7087/api/GetApplicants/${applicantnumber}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    APIServices.PersonList = data;
                    resolve(data);
                },
                error: function (e) {
                    console.error("Error in GetPersonList:", e);
                    reject(e);
                }
            });
        });
    },

    AddApplicant: function (objPerson) {
        APIServices.Applicant = objPerson;

        return new Promise((resolve, reject) => {
            $.ajax({
                type: "POST",
                url: "https://localhost:7087/api/InsertApplicant",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(objPerson),
                dataType: "json",
                success: function (data) {
                    resolve(data);
                },
                error: function (e) {
                    console.error("Error in AddApplicant:", e);
                    reject(e);
                }
            });
        });
    }
};

UpdatePerson: function (objPerson) {
    return new Promise((resolve, reject) => {
        $.ajax({
            type: "PUT",
            url: "https://localhost:7087/api/UpdatePerson",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(objPerson),
            dataType: "json",
            success: function (data) {
                resolve(data);
            },
            error: function (e) {
                console.error("Error in UpdatePerson:", e);
                reject(e);
            }
        });
    });
}
};
