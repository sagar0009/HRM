<%@ Page Title="" Language="C#" MasterPageFile="RecMaster.Master" AutoEventWireup="true" CodeBehind="RecHome.aspx.cs" Inherits="FinalP.DashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Welcome to ABC Recruitment system</td>
        </tr>
        <tr>
            <td  class="tblhead"> 
                <asp:Label ID="LblDt" runat="server"></asp:Label>               
            </td>
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
                            <td class="acc">Resigned</td>
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
                            <td class="acc">Total Vacancy Announced</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="LblTotVac" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">Total Applicant</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="LblTotApp" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">Selected Candidates</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="LblSelCan" runat="server" Text="0"></asp:Label>
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
