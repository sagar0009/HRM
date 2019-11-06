<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="FinalP.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HRMS Employee Login</title>

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
                            <form class="pt-3" runat="server">

                                <div class="input-container">
                                    <i class="mdi mdi-account icon"></i>
                                    <input type="email" runat="server" class="form-control form-control-lg" id="Email" name="Email" placeholder="Username"/>
                                </div>
                                <div class="input-container">
                                    <i class="mdi mdi-lock icon"></i>
                                    <input type="password" runat="server" class="form-control form-control-lg" name="Password" id="Password" placeholder="Password"/>
                                </div>
                                <div class="mt-3">
                                    <asp:Button ID="BtnLogin"  OnClick="BtnLogin_Click" CssClass="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" runat="server" Text="Sign In" />
                                   
                                </div>
                                <div class="my-2 d-flex justify-content-between align-items-center">
                                    
                                    <a href="#" class="auth-link text-black">Forgot password?</a>
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
