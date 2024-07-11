<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="frontendapp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="dashboard.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.dataTables.css" />
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.min.js"></script>
</head>
<body>
    <div class='dashboard'>
        <div class="dashboard-nav">
            <header>
                <a href="#!" class="menu-toggle"><i class="fas fa-bars"></i></a><a href="Home.aspx"
                    class="brand-logo"><img
                        img src="https://cscro6.wordpress.com/wp-content/uploads/2017/09/cropped-csc-logo-new-1024x768px.png?w=265"/><span>Database</span></a>
            </header>
           <nav class="dashboard-nav-list">
    <a href="Home.aspx" class="dashboard-nav-item"><i class="fas fa-home"></i>
        Home </a><a
            href="AddApplicant.aspx" class="dashboard-nav-item active"><i class= "fas fa-user-plus"></i>Add Applicant
        </a><a
            href="ViewDatabase.aspx" class="dashboard-nav-item"><i class="fa-solid fa-folder-open"></i>View Database </a>
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
                        <%--<table id="example" class="display" width="100%"></table>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
