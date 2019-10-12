<%@ Page Title="" Language="C#" MasterPageFile="~/PayRoll/PayRoll.Master" AutoEventWireup="true" CodeBehind="EmpReport.aspx.cs" Inherits="FinalP.PayRoll.EmpReport" %>

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
                            <asp:DropDownList ID="DdlDepartment" runat="server" CssClass="txt"
                                OnSelectedIndexChanged="DdlDepartment_SelectedIndexChanged"
                                AutoPostBack="True">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>IT</asp:ListItem>
                                <asp:ListItem>COMPUTER</asp:ListItem>
                                <asp:ListItem>CIVIL</asp:ListItem>
                                <asp:ListItem>EC</asp:ListItem>
                                <asp:ListItem>ELECTRICAL</asp:ListItem>
                                <asp:ListItem>MECHANICAL</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Select Employee :
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlEmp" runat="server" CssClass="txt">
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
                                            <td class="lbl">Class :
                                            </td>
                                            <td>
                                                <asp:Label ID="LblClass" runat="server" CssClass="lbl"></asp:Label>
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
                                            <td class="lbl">City :
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Label ID="LblCity" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">Salary :
                                            </td>
                                            <td>
                                                <asp:Label ID="LblSalary" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <%-- <td class="lbl">Pincode :
                                            </td>--%>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <%--<td>
                                                <asp:Label ID="lblpincode" runat="server" CssClass="lbl"></asp:Label>
                                            </td>--%>
                                            <td>&nbsp;</td>
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
                                            <td class="lbl">Email :
                                            </td>
                                            <td>
                                                <asp:Label ID="LblEmail" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">Degree :
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Label ID="LblDegree" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">Password :
                                            </td>
                                            <td>
                                                <asp:Label ID="LblPassword" runat="server" CssClass="lbl"></asp:Label>
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
                                            <td class="lbl">Department :
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Label ID="LblDpt" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Button ID="BtnActive" runat="server" CssClass="btn"
                                                    OnClick="BtnActive_Click" Text="ACTIVE" Width="120px" />
                                            </td>
                                            <td>
                                                <asp:Button ID="BtnDel" runat="server" CssClass="btn"
                                                    OnClick="BtnDel_Click" Text="DELETE" Width="120px" />
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
