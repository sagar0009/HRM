<%@ Page Title="" Language="C#" MasterPageFile="Portal.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="FinalP.JobPortal.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .menu-titler {
            color: inherit;
            display: inline-block;
            font-size: 0.875rem;
            line-height: 1;
            vertical-align: middle;
        }

        .bdr {
            border: 2px solid gray;
            background-color: lightgrey;
        }

        .col-up-1 {
            flex: 0 0 25%;
            max-width: 25%;
        }

        .col-up-2 {
            flex: 0 0 70%;
            max-width: 70%;
        }

        .col-up-3 {
            flex: 0 0 25%;
            max-height: 70%;
        }

        .col-up-4 {
            flex: 0 0 50%;
            max-height: 50%;
        }

        .img-circle {
            background: black;
            width: 100%;
        }

        .spans {
            left: 0;
            text-align: center;
            width: 100%;
            background: rgba(255,255,255,0.5);
            bottom: 0;
            padding: 0px;
        }

        .img-thumbnails {
            border-radius: 0;
            display: inline-block;
            width: 100%;
            text-align: center;
            background: #dbdbdb;
            padding: 20px;
        }

            .img-thumbnails > div {
                display: inline-block;
                overflow: hidden;
                height: 140px;
                border: 5px solid #fff;
                -webkit-box-shadow: 0 2px 0 2px #333;
                box-shadow: 0 2px 0 2px #333;
                border-radius: 50%;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-4 bdr">
            <div class="form-group">
                <ul style="list-style: none">
                    <li>
                        <div class="img-thumbnails">
                            <div style="position: relative; padding: 0; cursor: pointer;">
                                <img class="img-circle" src="typ.jpg" style="width: 140px; height: 140px;" />
                                <span class="spans" style="position: absolute; padding-bottom: 20px; color: red;">Update Profile</span>
                            </div>

                        </div>
                    </li>
                    <li>
                        <div class="text-center ">
                            <asp:Label ID="LblName" runat="server" Text="User Name"></asp:Label>
                        </div>

                    </li>
                    <li class="text-center">
                        <input type="submit" style="width: 48%; text-emphasis-color:black"  class="btn btn-primary pull-right" id="BtnEdit" name="BtnEdit" value="Edit Profile">
                        <input type="submit" style="width: 48%" class="btn btn-primary pull-right" id="BtnLogout" name="BtnLogout" value="Logout">
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-8 bdr">
            <asp:Panel ID="Panel1" runat="server">
                <form runat="server">
                    <asp:Menu ID="Menu1" Width="90%" runat="server" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem Text="My Applied Jobs" Value="My Applied Jobs"></asp:MenuItem>
                            <asp:MenuItem Text="My Following Status" Value="My Following Status"></asp:MenuItem>
                        </Items>

                    </asp:Menu>
                </form>
            </asp:Panel>
        </div>
        <div class="col-md-4 bdr">
            <div class="form-group">
                <ul style="list-style: none;">
                    <li>
                        <div >
                            <a class="nav-link" href="#">
                                <span class="menu-titler">My Dashboard</span>
                            </a>
                        </div>
                    </li>

                    <li>
                        <div >
                            <a class="nav-link" href="#">
                                <span class="menu-title">Setting</span>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
