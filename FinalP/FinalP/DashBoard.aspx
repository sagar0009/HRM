<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="FinalP.DashBoard1" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
            <td class="tblhead">Total Employees (Department-wise)
            </td>
        </tr>
        <tr>
            <td>
                <asp:Chart ID="Chart1" DataSourceID="sds" runat="server" Style="margin-top: 66px" Width="677px" >
                    <Series>
                        <asp:Series Name="Series1" XValueMember="DepartmentName"
                            YValueMembers="Total" YValuesPerPoint="4"  ChartType="Pie" IsValueShownAsLabel="True" Legend="DepartmentName" LabelFormat="{P2}">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            
                        </asp:ChartArea>
                    </ChartAreas>
                    <Legends>
                        <asp:Legend Name="DepartmentName">
                        </asp:Legend>
                    </Legends>
                    <Titles>
                        <asp:Title Name="Title1" Text="Total Employees (Department-wise)">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="tblhead">Total Employees (Gender-wise)
            </td>
        </tr>
        <tr>
            <td>
                <asp:Chart ID="Chart2" DataSourceID="empGen" runat="server" Style="margin-top: 66px" Width="676px">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="Gender"
                            YValueMembers="Total" MarkerSize="2" YValuesPerPoint="4" ChartType="StackedColumn" IsValueShownAsLabel="True">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX Title="Gender"></AxisX>
                            <AxisY Title="Number of Employees"></AxisY>
                        </asp:ChartArea>
                    </ChartAreas>
                    <Titles>
                        <asp:Title Name="Title1" Text="Total Employees (Genderwise)">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
            </td>
        </tr>
        <asp:SqlDataSource ID="sds" runat="server"
            ConnectionString="Data Source=NEEVAN\;Initial Catalog=HRMS;Integrated Security=True"
            SelectCommand="select DepartmentName, count(*)*1.0/(select COUNT(*) from Employee) as Total From Employee e 
                join Department d on d.DeptId=e.DeptId group by DepartmentName"></asp:SqlDataSource>
        <asp:SqlDataSource ID="empGen" runat="server"
            ConnectionString="Data Source=NEEVAN\;Initial Catalog=HRMS;Integrated Security=True"
            SelectCommand="select Gender, count(*) as Total From employee group by Gender"></asp:SqlDataSource>
        <%-- <tr>
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
        </tr>--%>

        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
