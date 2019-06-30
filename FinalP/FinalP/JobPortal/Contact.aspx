<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal/Portal.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FinalP.JobPortal.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
