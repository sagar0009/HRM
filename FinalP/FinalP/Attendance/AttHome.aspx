<%@ Page Title="" Language="C#" MasterPageFile="~/Attendance/Attendance.Master" AutoEventWireup="true" CodeBehind="AttHome.aspx.cs" Inherits="FinalP.Attendance.AttHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Welcome to ABC Attendance system</td>
        </tr>
        <tr>
            <td class="tblhead">
                <asp:Label ID="LblDt" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">Employee</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="LblEmp" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">Active</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="LblActiveEmp" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">Deactive</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="LblDeactEmp" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">New Leave</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="LblNewLeave" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">Approved</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="LblAppLeave" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">Rejected</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="LblRejLeave" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
