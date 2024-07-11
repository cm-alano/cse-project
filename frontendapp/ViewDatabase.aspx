<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Database</title>
    <link rel="stylesheet" href="dashboard.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.dataTables.css" />
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
</head>
<body>
    <div class='dashboard'>
        <div class="dashboard-nav">
            <header>
                <a href="#!" class="menu-toggle"><i class="fas fa-bars"></i></a>
                <a href="Home.aspx" class="brand-logo">
                    <img src="https://cscro6.wordpress.com/wp-content/uploads/2017/09/cropped-csc-logo-new-1024x768px.png?w=265"/>
                    <span>Database</span>
                </a>
            </header>
            <nav class="dashboard-nav-list">
                <a href="Home.aspx" class="dashboard-nav-item"><i class="fas fa-home"></i> Home </a>
                <a href="AddApplicant.aspx" class="dashboard-nav-item"><i class="fas fa-user-plus"></i>Add Applicant </a>
                <a href="ViewDatabase.aspx" class="dashboard-nav-item active"><i class="fa-solid fa-folder-open"></i>View Database </a>
                <!-- Add other navigation items here -->
                <a href="#" class="dashboard-nav-item"><i class="fas fa-sign-out-alt"></i>Logout </a>
            </nav>
        </div>
        <div class='dashboard-app'>
            <header class='dashboard-toolbar'><a href="#!" class="menu-toggle"><i class="fas fa-bars"></i></a></header>
            <div class='dashboard-content'>
                <div class='container'>
                    <div class="table-wrapper">
                        <div class="table-title">
                            <div class="row">
                                <div class="col-sm-8"><h2>Applicant <b>Details</b></h2></div>
                                <div class="col-sm-4">
                                    <button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i> Add New</button>
                                </div>
                            </div>
                        </div>
                        <table id="example" class="display" width="100%" style="margin-top:20px"></table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="APIServices.js"></script>
    <script type="text/javascript">

        const mobileScreen = window.matchMedia("(max-width: 80% )");
        $(document).ready(function () {
            LoadTable();

            $(".dashboard-nav-dropdown-toggle").click(function () {
                $(this).closest(".dashboard-nav-dropdown")
                    .toggleClass("show")
                    .find(".dashboard-nav-dropdown")
                    .removeClass("show");
                $(this).parent()
                    .siblings()
                    .removeClass("show");
            });

            $(".menu-toggle").click(function () {
                if (mobileScreen.matches) {
                    $(".dashboard-nav").toggleClass("mobile-show");
                } else {
                    $(".dashboard").toggleClass("dashboard-compact");
                }
            });

            // Redirect to AddApplicant.aspx when Add New button is clicked
            $(".add-new").click(function () {
                window.location.href = "/AddApplicant.aspx";
            });

            $(document).on("click", ".edit", function () {
                $(this).parents("tr").find("td:not(:last-child)").each(function () {
                    $(this).html('<input type="text" class="form-control" value="' + $(this).text() + '">');
                });
                $(this).parents("tr").find(".add, .edit").toggle();
                $(".add-new").attr("disabled", "disabled");
            });

            $(document).on("click", ".delete", function () {
                $(this).parents("tr").remove();
                $(".add-new").removeAttr("disabled");
            });
        });

        function LoadTable() {
            APIServices.GetPersonList().then(data => {
                console.log("Data received:", data); 
                $("#example").DataTable({
                    "columns": [
                        { data: 'ApplicantNum', title: 'Applicant Number' },
                        { data: 'Firstname', title: 'First Name' },
                        { data: 'Middlename', title: 'Middle Name' },
                        { data: 'Lastname', title: 'Last Name' },
                        { data: 'Age', title: 'Age' },
                        { data: 'Birthdate', title: 'Birthdate' },
                        { data: 'Sex', title: 'Sex' },
                        { data: 'BirthPlace', title: 'Birth Place' },
                        { data: 'Citizenship', title: 'Citizenship' },
                        { data: 'NameOfMother', title: 'Name of Mother' },
                        { data: 'Address', title: 'Address' },
                        { data: 'Height', title: 'Height' },
                        { data: 'Weight', title: 'Weight' },
                        { data: 'CivilStatus', title: 'Civil Status' },
                        { data: 'Pregnant', title: 'Pregnant' },
                        { data: 'PWD', title: 'PWD' },
                        { data: 'MobileNum', title: 'Mobile Number' },
                        { data: 'TelNum', title: 'Telephone Number' },
                        { data: 'EmailAdd', title: 'Email Address' },
                        { data: 'EducationLevel', title: 'Education Level' },
                        { data: 'CompLTN', title: 'Completion' },
                        { data: 'HighestYrLvL', title: 'Highest Year Level' },
                        { data: 'GradDate', title: 'Graduation Date' },
                        { data: 'Program', title: 'Program' },
                        { data: 'Major', title: 'Major' },
                        { data: 'SchoolName', title: 'School Name' },
                        { data: 'SchoolAdd', title: 'School Address' },
                        { data: 'InclusiveYears', title: 'Inclusive Years' },
                        { data: 'PresentEmployment', title: 'Present Employment' },
                        { data: 'Agency', title: 'Agency' },
                        { data: 'AgencyAdd', title: 'Agency Address' },
                        { data: 'JobTitle', title: 'Job Title' },
                        { data: 'JobYears', title: 'Job Years' },
                        { data: 'EmploymentStatus', title: 'Employment Status' },
                        {
                            data: null,
                            title: 'Actions',
                            defaultContent: `
                                <a href="/Updateperson.aspx" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                                <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                            `,
                            orderable: false
                        }
                    ],
                    "data": data,
                    "responsive": true,
                    "paging": true,     
                    "searching": true,  
                    "ordering": true,  
                    "info": true,       
                    "autoWidth": true,  
                    "lengthMenu": [10, 25, 50, 75, 100],
                    "language": {
                        "emptyTable": "No data available in table", 
                        "loadingRecords": "Loading...",            
                        "processing": "Processing...",            
                        "search": "Search:",                    
                        "lengthMenu": "Show _MENU_ entries",    
                        "paginate": {
                            "first": "First",                      
                            "last": "Last",                      
                            "next": "Next",                        
                            "previous": "Previous"            
                        }
                    },
                    "scrollX": true 
                });
            }).catch(error => {
                console.error("Error fetching data:", error); // Debugging: Log any errors
            });
        }
    </script>
</body>
</html>