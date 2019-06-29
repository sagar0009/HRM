<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal/Portal.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FinalP.JobPortal.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <div id="main-container">
        <style>
            .contactgroup i.fa {
                display: inline-block;
                border-radius: 71%;
                box-shadow: 0px 0px 2px #888;
                padding: 6px 5px 7px 10px;
                font-size: 22px;
            }

            .form-contact input:not(.btn):not(.viewmore-products-btn), .form-contact textarea {
                padding: 0px;
                width: 100%;
                color: #797979;
            }
        </style>
        <div id="bground">
            <div class="container">
                <h1 class="heading text-center">Contact us</h1>
                <div class="row">
                    <div class="col-md-12">

                        <div class="row">
                            <div class="col-md-8">
                                <div class="text-center">
                                    <img style="height: 165px; margin-left: 33%;" class="img-responsive" src="../Images/typ.jpg">
                                </div>
                                <div class="well well-sm">
                                    <!--notification start-->
                                    <!--notification end-->
                                    <form action="Home.aspx" method="post" accept-charset="utf-8" class="form-contact">
                                        <div class="col-md-6">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control" name="name" id="name" placeholder="Enter name" required="required" value="">
                                            <div class="form-group">
                                                <label for="email">Email Address</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                                                    <input type="email" name="email" class="form-control" id="email" placeholder="Enter email" required="required" value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="subject">Subject</label>
                                                <select id="subject" name="subject" class="form-control" required="required">
                                                    <option value="" selected="">Choose One:</option>
                                                    <option value="General Customer Service">General Customer Service</option>
                                                    <option value="Suggestions">Suggestions</option>
                                                    <option value="Support">Support</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="name">Message</label>
                                                <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required" placeholder="Message">  </textarea>
                                            </div>
                                        </div>
                                        <input type="submit" class="btn btn-primary pull-right" id="btnContactUs" name="btnContactUs" value="Send Message">
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <form style="margin-top: 30px;">
                                    <legend><span class="glyphicon glyphicon-globe"></span>&nbsp;Head Office</legend>
                                    <ul class="list-group contactgroup">
                                        <li class="list-group-item">
                                            <div><i class="fmdi mdi-home ">&nbsp;</i> <strong>Subidhanagar, Tinkune </strong></div>
                                        </li>
                                        <li class="list-group-item">
                                            <div><i class="mdi mdi-phone-classic ">&nbsp;</i> <strong>01-5199600 </strong></div>
                                        </li>
                                        <li class="list-group-item">
                                            <div><i class="mdi mdi-phone ">&nbsp;</i> <strong>For Job Posting Service: 9801178851</strong></div>
                                        </li>
                                        <li class="list-group-item">
                                            <div><i class="mdi mdi-phone ">&nbsp;</i> <strong>For HR Service: 9801179103</strong></div>
                                        </li>
                                        <li class="list-group-item">
                                            <div><i class="mdi mdi-email ">&nbsp;</i> <strong>info@kumarijob.com</strong></div>
                                        </li>
                                        <li class="list-group-item">
                                            <div><i class="mdi mdi-globe-model ">&nbsp;</i> <strong>www.kumarijob.com</strong></div>
                                        </li>
                                        <li class="list-group-item">
                                            <div><i class="mdi mdi-account-group ">&nbsp;</i> <strong>Customer support: 9801178845</strong></div>
                                        </li>
                                    </ul>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>--%>


    <div class="row">
        <div class="col-md-12">
            <div class="text-center">
                <img style="height: 165px; margin-left: 0%;" class="img-responsive" src="../Images/typ.jpg">
            </div>
        </div>
        <div class="col-md-4">
            <label for="name">Name</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Enter name" required="required" value="">
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" name="email" class="form-control form-control-lg" id="email" placeholder="Enter email" required="required" value="">
            </div>
            <div class="form-group">
                <label for="subject">Subject</label>
                <select id="subject" name="subject" class="form-control" required="required">
                    <option value="" selected="">Choose One:</option>
                    <option value="General Customer Service">General Customer Service</option>
                    <option value="Suggestions">Suggestions</option>
                    <option value="Support">Support</option>
                </select>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label for="name">Message</label>
                <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required" placeholder="Message">  </textarea>
                <br />
                <div>
                    <input type="submit" class="btn btn-primary pull-right" id="btnContactUs" name="BtnContactUs" value="Send Message">
                </div>

            </div>
        </div>
        <div class="col-md-4">
            <form style="margin-top: 30px;">
                <legend><span class="glyphicon glyphicon-globe"></span>&nbsp;Head Office</legend>
                <ul class="list-group contactgroup">
                    <li class="list-group-item">
                        <div><i class="mdi mdi-home">&nbsp;</i> <strong>Address </strong></div>
                    </li>
                    <li class="list-group-item">
                        <div><i class="mdi mdi-phone-classic ">&nbsp;</i> <strong>Landline </strong></div>
                    </li>
                    <li class="list-group-item">
                        <div><i class="mdi mdi-phone ">&nbsp;</i> <strong>For Training Service:Contact</strong></div>
                    </li>
                    <li class="list-group-item">
                        <div><i class="mdi mdi-email ">&nbsp;</i> <strong>Company@gmail.com</strong></div>
                    </li>
                    <li class="list-group-item">
                        <div><i class="mdi mdi-account-group ">&nbsp;</i> <strong>Customer support: Contact</strong></div>
                    </li>
                </ul>
            </form>
        </div>
        <div>
        </div>






    </div>
</asp:Content>
