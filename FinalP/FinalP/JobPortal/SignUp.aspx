<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="FinalP.JobPortal.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="~/Resources/vendors/mdi/css/materialdesignicons.min.css" />
    <link rel="stylesheet" href="~/Resources/vendors/base/vendor.bundle.base.css" />
    <link rel="stylesheet" href="~/Resources/css/style.css" />
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container-scroller">
            <div class="container-fluid page-body-wrapper full-page-wrapper">
                <div class="content-wrapper d-flex align-items-center auth px-0">
                    <div class="row w-100 mx-0">
                        <div class="col-lg-4 mx-auto">
                            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                                <h4>New here?</h4>
                                <h6 class="font-weight-light">Signing up is easy. It only takes a few steps</h6>
                            </div>
                            <div class="form-group">
                                <input type="text" runat="server" name="Fname" class="form-control form-control-lg" id="FName" placeholder="First Name" />
                            </div>
                            <div class="form-group">
                                <input type="text" runat="server" name="Lname" class="form-control form-control-lg" id="LName" placeholder="Last Name" />
                            </div>
                            <div class="form-group">
                                <input type="email" runat="server" name="Email" class="form-control form-control-lg" id="Email" placeholder="Email" />
                            </div>
                            <div class="form-group">
                                <input type="password" runat="server" name="Password" class="form-control form-control-lg" id="Password" placeholder="Password" />
                            </div>
                            <div class="form-group">
                                <input type="password" runat="server" class="form-control form-control-lg" id="CPassword" placeholder="Confirm Password" />
                            </div>
                            <div class="form-group">

                                <input type="text" runat="server" name="Phone" class="form-control form-control-lg"  id="Phone" placeholder="Contact Number" />
                            </div>
                            <div class="form-group">
                                Address<br />
                                <asp:DropDownList CssClass="form-control form-control-lg" ID="DdlState" DataTextField="StateName"
                                    DataValueField="StateId" runat="server" AutoPostBack="True"
                                    OnSelectedIndexChanged="DdlState_SelectedIndexChanged">
                                </asp:DropDownList>
                                <br />
                                <asp:DropDownList CssClass="form-control form-control-lg" ID="DdlDistrict" DataValueField="DistrictId"
                                    DataTextField="DistrictName" runat="server" AutoPostBack="True"
                                    OnSelectedIndexChanged="DdlDistrict_SelectedIndexChanged">
                                </asp:DropDownList>
                                <br />
                                <asp:DropDownList CssClass="form-control form-control-lg" ID="DdlMunicipality" DataTextField="NagarpalikaName"
                                    DataValueField="NagarpalikaId" OnSelectedIndexChanged="DdlMunicipality_SelectedIndexChanged" runat="server">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                Gender
                                <asp:RadioButtonList  ID="RadioButtonList1" runat="server">
                                    <asp:ListItem Value="male">male</asp:ListItem>
                                    <asp:ListItem Value="female">female</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group">
                                <label class="form-check-label text-muted">
                                    <asp:CheckBox ID="ChkBox" OnCheckedChanged="ChkBox_CheckedChanged" AutoPostBack="true" runat="server" />
                                    I agree to all Terms & Conditions                                                            
                                </label>
                            </div>
                            <div class="mt-3">
                                <asp:Button CssClass="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" ID="BtnSignUp" runat="server" Text="SignUp" OnClick="BtnSignUp_Click" />
                            </div>
                            <div class="text-center mt-4 font-weight-light">
                                Already have an account? <a href="login.aspx" class="text-primary">Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
        </div>
        <!-- page-body-wrapper ends -->      
    </form>
    <script src="~/Resources/vendors/base/vendor.bundle.base.js"></script>
    <script src="~/Resources/js/off-canvas.js"></script>
    <script src="~/Resources/js/hoverable-collapse.js"></script>
    <script src="~/Resources/js/template.js"></script>
</body>
</html>
