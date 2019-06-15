<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="FinalP.DashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <title>HRMS Admin</title>
  <link href="Resources/vendors/mdi/css/materialdesignicons.min.css" rel="stylesheet" />
  <link href="Resources/vendors/base/vendor.bundle.base.css" rel="stylesheet" />
  <link href="Resources/css/style.css" rel="stylesheet" />
</head>

<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="navbar-brand-wrapper d-flex justify-content-center">
        <div class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">  
          <a class="navbar-brand brand-logo" href="DashBoard.aspx">Recruitment</a>
         
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-sort-variant"></span>
          </button>
        </div>  
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <ul class="navbar-nav mr-lg-4 w-100">
          <li class="nav-item nav-search d-none d-lg-block w-100">
            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text" id="search">
                  <i class="mdi mdi-magnify"></i>
                </span>
              </div>
              <input type="text" class="form-control" placeholder="Search now" aria-label="search" aria-describedby="search"/>
            </div>
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
          
          
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              
              <span class="nav-profile-name">Option</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item">
                <i class="mdi mdi-settings text-primary"></i>
                Settings
              </a>
              <a class="dropdown-item" href="Login.html" >
                <i class="mdi mdi-logout text-primary"></i>
                Logout
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">Home</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link"  href="VacancyDetails.aspx">
              <i class="mdi mdi-account-group menu-icon"></i>
              <span class="menu-title">Vacancy Announcements</span> 
            </a>            
          </li>
          <li class="nav-item">
            <a class="nav-link" href="VacancyReceived.aspx">
              <i class="mdi mdi-file-import menu-icon"></i>
              <span class="menu-title">Applications Received</span>
            </a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="Evaluation.aspx">
              <i class="mdi mdi-table-edit menu-icon"></i>
              <span class="menu-title">Evaluation</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="ShortList.aspx">
              <i class="mdi mdi-minus-circle menu-icon"></i>
              <span class="menu-title">ShortList</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="WrittenTest.aspx">
              <i class="mdi mdi-pen menu-icon"></i>
              <span class="menu-title">Calls for written Test</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Interview.aspx">
              <i class="mdi mdi-phone-in-talk menu-icon"></i>
              <span class="menu-title">Calls for Interview</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Status.aspx" >
              <i class="mdi mdi-file-document-box-outline menu-icon"></i>
              <span class="menu-title">Status</span>              
            </a>            
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Contract.aspx">
              <i class="mdi mdi-marker menu-icon"></i>
              <span class="menu-title">Contract</span>
            </a>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
        
          
         
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2018 <a href="https://www.urbanui.com/" target="_blank">Urbanui</a>. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  
  <script src="Resources/vendors/base/vendor.bundle.base.js"></script>
  <script src="Resources/vendors/chart.js/Chart.min.js"></script>
  <script src="Resources/vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="Resources/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="Resources/js/off-canvas.js"></script>
  <script src="Resources/js/hoverable-collapse.js"></script>
  <script src="Resources/js/template.js"></script>
  <script src="Resources/js/dashboard.js"></script>
  <script src="Resources/js/data-table.js"></script>
  <script src="Resources/js/jquery.dataTables.js"></script>
  <script src="Resources/js/dataTables.bootstrap4.js"></script>
  <!-- End custom js for this page-->
</body>
</html>
