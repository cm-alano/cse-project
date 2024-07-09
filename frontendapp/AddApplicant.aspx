<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddApplicant.aspx.cs" Inherits="frontendapp.AddApplicant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="dashboard.css" />
    <link rel="stylesheet" href="Pages.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
</head>
<body>
    <div class='dashboard'>
        <div class="dashboard-nav">
            <header>
                <a href="#!" class="menu-toggle"><i class="fas fa-bars"></i></a><a href="AddApplicant.aspx"
                    class="brand-logo"><i
                        class="fas fa-anchor"></i><span>CSC</span></a>
            </header>
            <nav class="dashboard-nav-list">
                <a href="#" class="dashboard-nav-item"><i class="fas fa-home"></i>
                    Home </a><a
                        href="#" class="dashboard-nav-item active"><i class="fas fa-tachometer-alt"></i>dashboard
                    </a><a
                        href="#" class="dashboard-nav-item"><i class="fas fa-file-upload"></i>Upload </a>
                <div class='dashboard-nav-dropdown'>
                    <a href="#!" class="dashboard-nav-item dashboard-nav-dropdown-toggle"><i
                        class="fas fa-photo-video"></i>Media </a>
                    <div class='dashboard-nav-dropdown-menu'>
                        <a href="#"
                            class="dashboard-nav-dropdown-item">All</a><a
                                href="#" class="dashboard-nav-dropdown-item">Recent</a><a
                                    href="#" class="dashboard-nav-dropdown-item">Images</a><a
                                        href="#" class="dashboard-nav-dropdown-item">Video</a>
                    </div>
                </div>
                <div class='dashboard-nav-dropdown'>
                    <a href="#!" class="dashboard-nav-item dashboard-nav-dropdown-toggle"><i
                        class="fas fa-users"></i>Users </a>
                    <div class='dashboard-nav-dropdown-menu'>
                        <a href="#"
                            class="dashboard-nav-dropdown-item">All</a><a
                                href="#" class="dashboard-nav-dropdown-item">Subscribed</a><a
                                    href="#"
                                    class="dashboard-nav-dropdown-item">Non-subscribed</a><a
                                        href="#" class="dashboard-nav-dropdown-item">Banned</a><a
                                            href="#" class="dashboard-nav-dropdown-item">New</a>
                    </div>
                </div>
                <div class='dashboard-nav-dropdown'>
                    <a href="#!" class="dashboard-nav-item dashboard-nav-dropdown-toggle"><i
                        class="fas fa-money-check-alt"></i>Payments </a>
                    <div class='dashboard-nav-dropdown-menu'>
                        <a href="#"
                            class="dashboard-nav-dropdown-item">All</a><a
                                href="#" class="dashboard-nav-dropdown-item">Recent</a><a
                                    href="#" class="dashboard-nav-dropdown-item"> Projections</a>
                    </div>
                </div>
                <a href="#" class="dashboard-nav-item"><i class="fas fa-cogs"></i>Settings </a><a
                    href="#" class="dashboard-nav-item"><i class="fas fa-user"></i>Profile </a>
                <div class="nav-item-divider"></div>
                <a
                    href="#" class="dashboard-nav-item"><i class="fas fa-sign-out-alt"></i>Logout </a>
            </nav>
        </div>
        <div class='dashboard-app'>
            <header class='dashboard-toolbar'><a href="#!" class="menu-toggle"><i class="fas fa-bars"></i></a></header>
            <div class='dashboard-content'>
                <div class='container'>
                    <div>
                        <div class="CSE-Main-Wrapper">
                            <div class="CSE-form-wrapper">
                                <form id="addform" method="post">
                                    <div class="CSE-steps">
                                        <ul>
                                            <li id="stepnum1" class="active">
                                                <span>1</span>
                                                Personal Information
                                            </li>
                                            <li id="stepnum2">
                                                <span>2</span>
                                                Eucational Attainment
                                            </li>
                                            <li id="stepnum3">
                                                <span>3</span>
                                                Employment Details
                                            </li>
                                        </ul>
                                    </div>

                                    <div id="step1" class="CSE-form-step-active">
                                        <div class="CSEheader">About Yourself</div>

                                        <div class="CSE-input-flex">
                                            <div>
                                                <label for="firstname" class="CSE-form-label">First name </label>
                                                <input
                                                    type="text"
                                                    name="firstname"
                                                    placeholder="Ruzel Luigi"
                                                    id="firstname"
                                                    class="CSE-form-input" />
                                            </div>
                                            <div>
                                                <label for="lastname" class="CSE-form-label">Last name </label>
                                                <input
                                                    type="text"
                                                    name="lastname"
                                                    placeholder="Alano"
                                                    id="lastname" required
                                                    class="CSE-form-input" />
                                            </div>
                                            <div>
                                                <label for="middleinitial" class="CSE-form-label">Middle initial </label>
                                                <input
                                                    type="text"
                                                    name="middleinitial"
                                                    placeholder="Relevo"
                                                    id="middleinitial"
                                                    class="CSE-form-input" />
                                            </div>
                                        </div>

                                        <div class="CSE-input-flex">
                                            <div>
                                                <label for="birthdate" class="CSE-form-label">Date of Birth </label>
                                                <input
                                                    type="date"
                                                    name="birthdate"
                                                    id="birthdate" 
                                                    class="CSE-form-input" />
                                            </div>
                                            <div>
                                                <label for="sex" class="CSE-form-label">Sex </label>
                                                <select
                                                    type="text"
                                                    id="sex" required
                                                    name="sex"
                                                    placeholder="Male or Female"
                                                    class="CSE-form-input custom-select">
                                                    <option value="" disabled selected hidden>Select your sex</option>
                                                    <option value="M">Male</option>
                                                    <option value="F">Female</option>
                                                </select>
                                            </div>
                                            <div>
                                                <label for="citizenship" class="CSE-form-label">Citizenship </label>
                                                <input
                                                    type="text"
                                                    name="citizenship"
                                                    placeholder="Filipino"
                                                    id="citizenship" required
                                                    class="CSE-form-input" />
                                            </div>
                                        </div>
                                        <div class="CSE-input-flex">
                                            <div>
                                                <label for="birthplace" class="CSE-form-label">Place of Birth </label>
                                                <input
                                                    type="text"
                                                    name="birthplace"
                                                    id="birthplace" required
                                                    placeholder="Gumamela, Balayan, Batangas"
                                                    class="CSE-form-input" />
                                            </div>
                                            <div>
                                                <label for="nameofmother" class="CSE-form-label">Mother's Maiden Name </label>
                                                <input
                                                    type="text"
                                                    name="nameofmother"
                                                    id="nameofmother" required
                                                    placeholder="Ma. Zelka Gavino Alano"
                                                    class="CSE-form-input" />
                                            </div>
                                        </div>

                                        <div class="CSE-input-flex">
                                            <div>
                                                <label for="address" class="CSE-form-label">Complete Shipping Address</label>
                                                <input
                                                    type="text"
                                                    name="address"
                                                    id="address" required
                                                    placeholder="B44b, Villa Regina Condominiums, Antonio Street Barangay Bambang, Pasig City"
                                                    class="CSE-form-input" />
                                            </div>
                                        </div>

                                        <div class="CSE-input-flex">
                                            <div>
                                                <label for="height" class="CSE-form-label">Height (in Meters) </label>
                                                <input
                                                    type="text"
                                                    name="height"
                                                    id="height" required
                                                    placeholder="Meters"
                                                    class="CSE-form-input" />
                                            </div>
                                            <div>
                                                <label for="weight" class="CSE-form-label">weight (in kilos) </label>
                                                <input
                                                    type="text"
                                                    name="weight"
                                                    id="weight" required
                                                    placeholder="kilograms"
                                                    class="CSE-form-input" />
                                            </div>
                                            <div>
                                                <label for="civilStatus" class="CSE-form-label">Civil Status </label>
                                                <select
                                                    type="text"
                                                    id="civilStatus" required
                                                    name="civilStatus"
                                                    class="CSE-form-input custom-select">
                                                    <option value="" disabled selected hidden>Select Civil Status</option>
                                                    <option value="Single">Single</option>
                                                    <option value="Married">Married</option>
                                                    <option value="Separated">Separated</option>
                                                    <option value="Widowed">Widowed</option>
                                                    <option value="others">others</option>
                                                </select>
                                            </div>
                                            <div class="CSE-input-flex-check">
                                                <div class="CSE-form-check">
                                                    <label for="pregnant" class="CSE-form-label-check">
                                                        <input
                                                            type="checkbox"
                                                            name="pregnant"
                                                            id="pregnant"
                                                            value="pregnant"
                                                            class="CSE-check-temp" />
                                                        <span class="CSE-form-input-check"></span>
                                                        pregnant
                                                    </label>
                                                </div>
                                                <div class="CSE-form-check-pwd">
                                                    <label for="pwd" class="CSE-form-label-check">
                                                        <input
                                                            type="checkbox"
                                                            name="pwd"
                                                            id="pwd"
                                                            value="pwd"
                                                            class="CSE-check-temp" />
                                                        <span class="CSE-form-input-check"></span>
                                                        PWD
                                                    </label>
                                                    <input
                                                        type="text"
                                                        name="disab"
                                                        id="disab"
                                                        placeholder="Disability Type"
                                                        class="CSE-form-input"
                                                        disabled="disabled" />
                                                    <label for="disab"></label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="CSE-input-flex">
                                            <div>
                                                <label for="mobilenum" class="CSE-form-label">Mobile Number </label>
                                                <input
                                                    type="text"
                                                    name="mobilenum"
                                                    id="mobilenum" required
                                                    placeholder="Format: 09XXXXXXXXX"
                                                    class="CSE-form-input" />
                                            </div>
                                            <div>
                                                <label for="telnum" class="CSE-form-label">Telephone Number </label>
                                                <input
                                                    type="text"
                                                    name="telnum"
                                                    id="telnum" required
                                                    placeholder="Optional"
                                                    class="CSE-form-input" />
                                            </div>
                                            <div>
                                                <label for="emailadd" class="CSE-form-label">Email Address </label>
                                                <input
                                                    type="email"
                                                    name="emailadd"
                                                    id="emailadd" required
                                                    placeholder="blankblank@blank.com"
                                                    class="CSE-form-input" />
                                            </div>
                                        </div>
                                    </div>

                                    <div id="step2" class="CSE-form-step-inactive">
                                        <div class="CSE-input-flex">
                                            <div class="CSEheader2">Educational Attainment</div>
                                        </div>

                                        <div class="CSE-input-flex">
                                            <div>
                                                <label for="educationlevel" class="CSE-form-label">Highest Educational Level Achieved </label>
                                                <select
                                                    type="text"
                                                    id="educationlevel" required
                                                    name="educationlevel"
                                                    class="CSE-form-input custom-select">
                                                    <option value="" disabled selected hidden>Select Highest Educational Level </option>
                                                    <option value="Elementary">Elementary</option>
                                                    <option value="HighSchool">High School</option>
                                                    <option value="College">College</option>
                                                    <option value="Masters">Masters</option>
                                                    <option value="Doctorates">Doctorates</option>
                                                </select>
                                            </div>
                                            <div class="CSE-input-flex">
                                                <div style="margin-top: 20px; margin-left: 20px;">
                                                    <label for="completion" class="CSE-form-label-check">
                                                        <input
                                                            type="checkbox"
                                                            name="completion"
                                                            id="completion"
                                                            value="Graduated"
                                                            class="CSE-check-temp" />
                                                        <span class="CSE-form-input-check"></span>
                                                        Graduated?
                                                    </label>
                                                </div>
                                                <div>
                                                    <label for="graddate" class="CSE-form-label" style="margin-top: -20px;">Yes </label>
                                                    <input
                                                        type="date"
                                                        name="graddate"
                                                        id="graddate"
                                                        class="CSE-form-input-block"
                                                        disabled="graddate" />
                                                </div>
                                                <div>
                                                    <label for="highestyrlvl" class="CSE-form-label" style="margin-top: -20px;">No </label>
                                                    <input
                                                        type="text"
                                                        name="highestyrlvl"
                                                        id="highestyrlvl"
                                                        placeholder="Highest Year/Level/Units earned"
                                                        class="CSE-form-input-block" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="CSE-input-flex">
                                            <div>
                                                <label for="program" class="CSE-form-label">Complete Title of Course/Degree </label>
                                                <input
                                                    type="text"
                                                    name="program"
                                                    placeholder="For College, Masters, Doctorates"
                                                    id="program" required
                                                    class="CSE-form-input"
                                                    disabled="program" />
                                            </div>
                                            <div>
                                                <label for="major" class="CSE-form-label">Major </label>
                                                <input
                                                    type="text"
                                                    name="major"
                                                    placeholder="Major in"
                                                    id="major" required
                                                    class="CSE-form-input"
                                                    disabled="major" />
                                            </div>
                                            <div>
                                                <label for="schoolname" class="CSE-form-label">School Name </label>
                                                <input
                                                    type="text"
                                                    name="schoolname"
                                                    placeholder="Polytechnic University of the Philippines"
                                                    id="schoolname" required
                                                    class="CSE-form-input" />
                                            </div>
                                        </div>
                                        <div class="CSE-input-flex">
                                            <div>
                                                <label for="schooladd" class="CSE-form-label">School Address </label>
                                                <input
                                                    type="text"
                                                    id="schooladd" required
                                                    name="schooladd"
                                                    placeholder="123 Street, Balayan, Batangas"
                                                    class="CSE-form-input">
                                            </div>
                                            <div class="CSE-input-flex" style="margin-top: 0px;">
                                                <div>
                                                    <label for="yearfrom" class="CSE-form-label">From </label>
                                                    <input
                                                        type="date"
                                                        id="yearfrom" required
                                                        name="yearfrom"
                                                        class="CSE-form-input-block">
                                                </div>
                                                <div>
                                                    <label for="yearto" class="CSE-form-label">To </label>
                                                    <input
                                                        type="date"
                                                        id="yearto" required
                                                        name="yearto"
                                                        class="CSE-form-input-block">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="step3" class="CSE-form-step-inactive">
                                        <div class="CSEheader">Government Examinations Passed</div>

                                        <div class="CSE-input-flex" id="examdiv0">
                                            <div>
                                                <label for="Exampassed0" class="CSE-form-label">Examination Passed </label>
                                                <input
                                                    type="text"
                                                    name="exampassed"
                                                    placeholder=""
                                                    id="exampassed0" required
                                                    class="CSE-form-input" />
                                            </div>
                                            <div class="CSE-input-flex" style="margin-top: 0px;">
                                                <div>
                                                    <label for="rating0" class="CSE-form-label">Rating Obtained </label>
                                                    <input
                                                        type="number"
                                                        name="rating"
                                                        min="1" max="10"
                                                        placeholder="1-10"
                                                        id="rating0" required
                                                        class="CSE-form-input" />
                                                </div>
                                                <div>
                                                    <label for="examdate0" class="CSE-form-label">Date of Examination/Eligibility Granted </label>
                                                    <input
                                                        type="date"
                                                        name="examdate"
                                                        id="examdate0" required
                                                        class="CSE-form-input" />
                                                </div>
                                                <div>
                                                    <label for="examplace0" class="CSE-form-label">Place of Examination </label>
                                                    <input
                                                        type="text"
                                                        name="examplace"
                                                        id="examplace0" required
                                                        class="CSE-form-input" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="CSE-input-flex">
                                            <button id="addbutton">
                                                Add another

                                            </button>
                                        </div>

                                        <div class="CSEheader" style="margin-top: 40px;">Present Employment</div>

                                        <div class="CSE-input-flex">
                                            <div>
                                                <label for="presentemployment" class="CSE-form-label">Current Employment </label>
                                                <select
                                                    type="text"
                                                    id="presentemployment" required
                                                    name="presentemployment"
                                                    class="CSE-form-input custom-select">
                                                    <option value="" disabled selected hidden>Employment options </option>
                                                    <option value="Government">Government</option>
                                                    <option value="Private">Private</option>
                                                    <option value="Non-government">Non-Government Organization</option>
                                                    <option value="Self-employed">Self-Employed</option>
                                                    <option value="Unemployed">Unemployed</option>
                                                </select>
                                            </div>
                                            <div class="CSE-input-flex" style="margin-top: 0px;">
                                                <div>
                                                    <label for="jobtitle" class="CSE-form-label">Job Title </label>
                                                    <input
                                                        type="text"
                                                        name="jobtitle"
                                                        id="examplace" required
                                                        placeholder="Developer"
                                                        class="CSE-form-input" />
                                                </div>

                                                <div>
                                                    <label for="jobyears" class="CSE-form-label">No. of years in Present Job </label>
                                                    <input
                                                        type="number"
                                                        name="jobyears"
                                                        id="jobyears" required
                                                        placeholder="6"
                                                        class="CSE-form-input" />
                                                </div>

                                                <div>
                                                    <label for="employmentstatus" class="CSE-form-label">Status of Employment </label>
                                                    <input
                                                        type="text"
                                                        name="employmentstatus"
                                                        id="employment" required
                                                        placeholder="Regular"
                                                        class="CSE-form-input" />
                                                </div>
                                            </div>
                                        </div>

                                        <div class="CSE-input-flex">

                                            <div>
                                                <label for="agency" class="CSE-form-label">Agency/Office </label>
                                                <input
                                                    type="text"
                                                    name="agency"
                                                    id="agency" required
                                                    placeholder="OSE"
                                                    class="CSE-form-input" />
                                            </div>

                                            <div>
                                                <label for="agencyadd" class="CSE-form-label">Agency Address </label>
                                                <input
                                                    type="text"
                                                    name="agencyadd"
                                                    id="agencyadd" required
                                                    placeholder="blank blank street manila"
                                                    class="CSE-form-input" />
                                            </div>

                                        </div>
                                    </div>

                                    <div class="CSE-form-btn-wrapper">
                                        <button class="CSE-back-btn">
                                            <input
                                                type="button"
                                                id="prevbtn"
                                                value="back">
                                        </button>

                                        <button class="CSE-back-btn">
                                            <input
                                                type="button"
                                                id="nextbtn"
                                                value="next">
                                        </button>

                                        <button class="CSE-back-btn">
                                            <input 
                                                type="submit"
                                                id="subbtn"
                                                value="Submit" hidden />
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
    $(document).ready(function () {

        $("#step1").is("CSE-Form-step-active");

        if ($("#step1").hasClass("CSE-form-step-active")) {
            $("#prevbtn").attr("hidden", "hidden");
        }


        $("#step2").is("CSE-Form-Step-active");

        let i = 1;



        //Click Events

        $("#nextbtn").click(function () {
            var activeId = $(".CSE-form-step-active")[0].id;

            switch (activeId) {
                case "step1":
                    $("#step1").removeClass("CSE-form-step-active").addClass("CSE-form-step-inactive");

                    $("#step2").removeClass("CSE-form-step-inactive").addClass("CSE-form-step-active");

                    $("#stepnum1").removeClass("active");
                    $("#stepnum2").addClass("active");
                    $("#prevbtn").removeAttr("hidden");
                    break;

                case "step2":
                    $("#step2").removeClass("CSE-form-step-active").addClass("CSE-form-step-inactive");

                    $("#step3").removeClass("CSE-form-step-inactive").addClass("CSE-form-step-active");

                    $("#stepnum2").removeClass("active");
                    $("#stepnum3").addClass("active");
                    $("#nextbtn").attr("hidden", "hidden");
                    $("#subbtn").removeAttr("hidden");
                    break;
            }
        })
        $("#prevbtn").click(function () {
            var activeId = $(".CSE-form-step-active")[0].id;

            switch (activeId) {

                case "step2":
                    $("#step2").removeClass("CSE-form-step-active").addClass("CSE-form-step-inactive");

                    $("#step1").removeClass("CSE-form-step-inactive").addClass("CSE-form-step-active");

                    $("#stepnum2").removeClass("active");
                    $("#stepnum1").addClass("active");
                    $("#prevbtn").attr("hidden", "hidden");
                    break;

                case "step3":
                    $("#step3").removeClass("CSE-form-step-active").addClass("CSE-form-step-inactive");

                    $("#step2").removeClass("CSE-form-step-inactive").addClass("CSE-form-step-active");

                    $("#stepnum3").removeClass("active");
                    $("#stepnum2").addClass("active");
                    $("#nextbtn").removeAttr("hidden");
                    $("#subbtn").attr("hidden", "hidden");
                    break;
            }
        })
        $("#pwd").click(function () {
            if ($(this).is(":checked")) {
                $("#disab").removeAttr("disabled");
            } else {
                $("#disab").attr("disabled", "disabled").val("");
            }
        })
        $("#completion").click(function () {
            if ($(this).is(":checked")) {
                $("#graddate").removeAttr("disabled");
                $("#highestyrlvl").attr("disabled", "disabled").val("");
            } else {
                $("#graddate").attr("disabled", "disabled").val("");
                $("#highestyrlvl").removeAttr("disabled");
            }
        })
        $("#educationlevel").change(function () {
            if ($(this).val() == "College" || $(this).val() == "Masters" || $(this).val() == "Doctorates") {
                $("#program").removeAttr("disabled",);
                $("#major").removeAttr("disabled",);
            } else {
                $("#program").attr("disabled", "disabled").val("");
                $("#major").attr("disabled", "disabled").val("");
            }
        })
        $('#addbutton').on('click', function () {
            var lastDiv = $('#step3 > div.CSE-input-flex').last();
            var inputsFilled = true;

            lastDiv.find('input').each(function () {
                if ($(this).val() === '') {
                    inputsFilled = false;
                    return false;
                }
            });

            if (!inputsFilled) {
                return;
            }

            var original = document.getElementById('examdiv0');
            var clone = original.cloneNode(true);

            clone.id = 'examdiv' + i;

            $(clone).find('label, input').each(function () {
                if (this.id) {
                    let newId = this.id.replace(/\d+$/, '') + i;
                    this.id = newId;
                }
                if (this.name) {
                    let newName = this.name.replace(/\d+$/, '') + i;
                    this.name = newName;
                }
            });

            $(clone).find('input').val('');

            $(clone).insertBefore($('#addbutton').parent());
            i++;
        });
        $("#subbtn").click(function () {

            GetExamHistoryObj();

            //get textfield values ex: var firstname = $('#txtFirstName').val();
            var objperson = {
                "firstname": $('#firstname').val(),
                "lastname": $('#lastname').val(),
                "middleinitial": $('#middleinitial').val(),
                "birthdate": $('#birthdate').val(),
                "sex": $('#sex').val(),
                "citizenship": $('#citizenship').val(),
                "birthplace": $('#birthplace').val(),
                "nameofmother": $('#nameofmother').val(),
                "address": $('#address').val(),
                "height": $('#height').val(),
                "weight": $('#weight').val(),
                "civilStatus": $('#civilStatus').val(),
                "pregnant": $('#pregnant').is(":checked") ? "Y" : "N",
                "pwd": $('#pwd').is(":checked") ? "Y" : "N",
                "disab": $('#disab').val(),
                "mobilenum": $('#mobilenum').val(),
                "telnum": $('#telnum').val(),
                "emailadd": $('#emailadd').val(),
                "educationlevel": $('#educationlevel').val(),
                "completion": $('#completion').val(),
                "graddate": $('#graddate').val(),
                "highestyrlvl": $('#highestyrlvl').val(),
                "program": $('#program').val(),
                "major": $('#major').val(),
                "schoolname": $('#schoolname').val(),
                "schooladd": $('#schooladd').val(),
                "yearfrom": $('#yearfrom').val(),
                "yearto": $('#yearto').val()
            }

            var examHistory = [];

            //var examHistory = [
            //    {
            //        "applicantId": 0,
            //        "exampassed": $('#exampassed').val(),
            //        "rating": $('#rating').val(),
            //        "examdate": $('#examdate').val(),
            //        "examplace": $('#examplace').val(),
            //        "presentemployment": $('#presentemployment').val(),
            //        "jobtitle": $('#jobtitle').val(),
            //        "jobyears": $('#jobyears').val(),
            //        "employmentstatus": $('#employment').val(),
            //        "agency": $('#agency').val(),
            //        "agencyadd": $('#agencyadd').val()
            //    },
            //    {
            //        "applicantId": 0,
            //        "exampassed": $('#exampassed').val(),
            //        "rating": $('#rating').val(),
            //        "examdate": $('#examdate').val(),
            //        "examplace": $('#examplace').val(),
            //        "presentemployment": $('#presentemployment').val(),
            //        "jobtitle": $('#jobtitle').val(),
            //        "jobyears": $('#jobyears').val(),
            //        "employmentstatus": $('#employment').val(),
            //        "agency": $('#agency').val(),
            //        "agencyadd": $('#agencyadd').val()
            //    }
            //]
            submitapplication(objperson);
        });

    });

    function SubmitApplication(objPerson)
    {
       APIServices.AddApplicant(objPerson);
        
    }

    function GetExamHistoryObj()
    {
        var divGroup = $("div[id^='examdiv']");
        var examHistory = [];

        divGroup.each(function () {
            var divId = this.id;
            var idNumber = divId[divId.length - 1];
            var exam =
            {
                "ApplicantId": 0,
                "ExamPassed": $("#exampassed" + idNumber).val(),
                "Rating": $("#rating" + idNumber).val(),
                "ExamDate": $("#examdate" + idNumber).val(),
                "ExamPlace": $("#examplace" + idNumber).val()
            };
            examHistory.push(exam);
        });
    }
</script>
</html>
