<%@ Page Title="" Language="C#" MasterPageFile="RecMaster.Master" AutoEventWireup="true" CodeBehind="VacancyDetails.aspx.cs" Inherits="FinalP.VacancyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            width: 755px;
        }

        .rtol {
            border: solid 1px green;
            width: 120px;
            padding-left: 3px;
            background: #e6ffee;
            direction: rtl;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">New Job Details</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style1">
                    <tr>
                        <td class="lbl">Post :</td>
                        <td>
                            <asp:DropDownList ID="DDPost" runat="server" CssClass="txt"
                                AutoPostBack="True" OnSelectedIndexChanged="DDPost_SelectedIndexChanged"
                                DataTextField="PostName" DataValueField="PostId">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Department :</td>
                        <td> <asp:Label ID="LblDept" BorderWidth="1px" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="lbl">Skills Required :</td>
                        <td>
                            <asp:Label ID="LblSkills" BorderWidth="1px" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Open Date</td>
                        <td>
                            <asp:TextBox ID="TBOpenDate" runat="server" ReadOnly="true"></asp:TextBox>&nbsp; 
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Cal.png" Height="15px" OnClick="ImageButton1_Click" />
                            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Selection_Change"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">End Date :</td>
                        <td>
                            <asp:TextBox ID="TBEndDate" runat="server" ReadOnly="true"></asp:TextBox>&nbsp; 
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Cal.png" Height="15px" OnClick="ImageButton2_Click" />
                            <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Selection1_Change"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Experience Required</td>
                        <td>
                            <asp:Label ID="LblExperience" BorderWidth="1px" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Educational Qualification</td>
                        <td>
                            <asp:Label ID="LblQual" BorderWidth="1px" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Salary</td>
                        <td>
                            <asp:Label ID="LblSalary" BorderWidth="1px" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Job Type</td>
                        <td>
                            <asp:DropDownList ID="DdlJobType" runat="server" CssClass="txt"
                                AutoPostBack="True" Width="197px">
                                <asp:ListItem Selected="True" Value="-1">Select Job Type</asp:ListItem>
                                <asp:ListItem Value="1" Text="Part-Time">
                                </asp:ListItem>
                                <asp:ListItem Value="2" Text="Full-Time"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Job Description</td>
                        <td>
                            <asp:TextBox ID="TBJobDesc" TextMode="MultiLine" ReadOnly="true" Rows="3" Width="300" Height="200" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">No. of Vacancy</td>
                        <td>
                            <asp:TextBox ID="TBNoVacancy" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            <asp:Button ID="BtnSubmit" align="center" Width="45%" CssClass="btn" runat="server" Text="Done" OnClick="BtnSubmit_Click" />
                        </td>
                        <td class="lbl">
                            <asp:Button ID="BtnBack" PostBackUrl="~/DashBoard.aspx" align="left" CssClass="btn" runat="server" Text="Cancel" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
