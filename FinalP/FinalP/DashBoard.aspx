<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="FinalP.DashBoard1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Welcome to ABC HRM system</td>
        </tr>
        <tr>
            <td class="tblhead">
                <asp:Label ID="LblDt" runat="server"></asp:Label>
            </td>
        </tr>
        <%--<tr>
            <td>&nbsp;ADD Graphs Bars etc here</td>
        </tr>--%>
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
            <td class="tblhead">
                <asp:Label ID="LblDt2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">Total Salary</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="LblTotSal" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">Total Deductions</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="LblTotDed" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">Net Salary</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="LblNetSal" runat="server" Text="0"></asp:Label>
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
