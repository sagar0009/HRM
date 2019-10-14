<%@ Page Title="" Language="C#" MasterPageFile="PayRoll.Master" AutoEventWireup="true" CodeBehind="PRHome.aspx.cs" Inherits="FinalP.PayRoll.Main" %>

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
            <td class="tblhead">Welcome to ABC payroll system</td>
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
