<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalP.JobPortal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HRMS User Login</title>

    <link rel="stylesheet" href="~/Resources/vendors/mdi/css/materialdesignicons.min.css" />
    <link rel="stylesheet" href="~/Resources/vendors/base/vendor.bundle.base.css" />
    <link rel="stylesheet" href="~/Resources/css/style.css" />
    <style>
        .input-container {
            display: -ms-flexbox;
            display: flex;
            width: 100%;
            margin-bottom: 15px;
        }

        .icon {
            padding: 10px;
            background: dodgerblue;
            color: white;
            min-width: 50px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth px-0">
                <div class="row w-100 mx-0">
                    <div class="col-lg-4 mx-auto">
                        <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                            
                            <h4>Hello! let's get started</h4>
                            <h6 class="font-weight-light">Sign in to continue.</h6>
                            <form class="pt-3">

                                <div class="input-container">
                                    <i class="mdi mdi-account icon"></i>
                                    <input type="email" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Username"/>
                                </div>
                                <div class="input-container">
                                    <i class="mdi mdi-lock icon"></i>
                                    <input type="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password"/>
                                </div>
                                <div class="mt-3">
                                    <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="DashBoard.aspx" >SIGN IN</a>
                                </div>
                                <div class="my-2 d-flex justify-content-between align-items-center">
                                    
                                    <a href="#" class="auth-link text-black">Forgot password?</a>
                                </div>                                
                                <div class="text-center mt-4 font-weight-light">
                                    Don't have an account? <a href="Register.aspx" class="text-primary">Create</a>
                                </div>
                               
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>

    <script src="~/Resources/vendors/base/vendor.bundle.base.js"></script>
    <script src="~/Resources/js/off-canvas.js"></script>
    <script src="~/Resources/js/hoverable-collapse.js"></script>
    <script src="~/Resources/js/template.js"></script>
</body>
</html>
