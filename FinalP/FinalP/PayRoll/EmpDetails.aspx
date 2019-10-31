<%@ Page Title="" Language="C#" MasterPageFile="~/PayRoll/PayRoll.Master" AutoEventWireup="true" CodeBehind="EmpDetails.aspx.cs" Inherits="FinalP.PayRoll.EmpDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .style1 {
            width: 574px;
            height: 22px;
        }

        .style2 {
            width: 100%;
        }

        .style3 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Employee Report</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Select Department :
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlDept" runat="server" CssClass="txt" DataTextField="DepartmentName"
                                OnSelectedIndexChanged="DdlDept_SelectedIndexChanged" DataValueField="DeptId"
                                AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Select Employee :
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlEmp" runat="server" DataTextField="FirstName" DataValueField="EmpId" CssClass="txt">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="BtnSearch" runat="server" CssClass="btn" Text="Search"
                                OnClick="BtnSearch_Click" />
                            <asp:Label ID="lbl" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="style2">
                            <tr>
                                <td bgcolor="#FFCCFF" style="color: #008000" class="style3">
                                    <strong>Employee Detail </strong>
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFCC">
                                    <table align="center" class="style1">
                                        <tr>
                                            <td class="lbl">Name :
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Label ID="LblName" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">Salary :
                                            </td>
                                            <td>
                                                <asp:Label ID="LblSalary" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">Address :
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Label ID="LblAdd" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">Basic Pay :
                                            </td>
                                            <td>
                                                <asp:Label ID="LblBasicPay" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">Email :
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Label ID="LblEmail" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">Account No.:
                                            </td>
                                            <td>
                                                <asp:Label ID="LblAccNo" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">Mobile :
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Label ID="LblMobile" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">Travelling Allowance :
                                            </td>
                                            <td>
                                                <asp:Label ID="LblTravAll" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">Degree :
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Label ID="LblDegree" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">Medical Allowance : </td>
                                            <td>
                                                <asp:Label ID="LblMedAll" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            </>
                                           
                                        </tr>
                                        <tr>
                                            <td class="lbl">Department :
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Label ID="LblDpt" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">Lunch Allowance:
                                            </td>
                                            <td>
                                                <asp:Label ID="LblLunAll" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">Designation :
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Label ID="LblDesig" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">Status :
                                            </td>
                                            <td>
                                                <asp:Label ID="LblStatus" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Button ID="BtnActive" runat="server" CssClass="btn"
                                                    OnClick="BtnActive_Click" Text="Activate" Width="120px" />
                                            </td>
                                            <td>
                                                <asp:Button ID="BtnSusp" runat="server" CssClass="btn"
                                                    OnClick="BtnSusp_Click" Text="Suspend" Width="120px" />
                                            </td>
                                            <td>
                                                <asp:Button ID="BtnDel" runat="server" CssClass="btn"
                                                    OnClick="BtnDel_Click" Text="Delete" Width="120px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
    </table>
</asp:Content>
