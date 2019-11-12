<%@ Page Title="" Language="C#" MasterPageFile="~/PayRoll/PayRoll.Master" AutoEventWireup="true" CodeBehind="GenerateSalary.aspx.cs" Inherits="FinalP.PayRoll.GenerateSalary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .style1 {
            width: 699px;
        }

        .style2 {
            width: 103px;
        }

        .style3 {
            width: 702px;
        }

        .style4 {
            height: 32px;
        }

        .style6 {
            text-align: right;
            color: Green;
            width: 250px;
        }

        .style7 {
            width: 217px;
        }

        .style9 {
            width: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Generate Salary</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="lbl">Year :
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlYear" runat="server" CssClass="txt"
                                AutoPostBack="true">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>
                                <asp:ListItem>2019</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" InitialValue="SELECT"
                                ControlToValidate="DdlYear" ErrorMessage="Enter the year" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style5">&nbsp;</td>
                        <td>&nbsp;</td>

                    </tr>
                    <tr>
                        <td class="lbl">Month :
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlMonth" runat="server" CssClass="txt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="DdlMonth" ErrorMessage="Select month" ForeColor="Red"
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Department :</td>
                        <td>
                            <asp:DropDownList ID="DdlDept" runat="server" CssClass="txt" DataTextField="DepartmentName"
                                OnSelectedIndexChanged="DdlDept_SelectedIndexChanged" DataValueField="DeptId"
                                AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="DdlDept" ErrorMessage="Select Department" ForeColor="Red"
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Employee :
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlEmp" runat="server" DataTextField="FirstName" DataValueField="EmpId" CssClass="txt">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="DdlEmp" ErrorMessage="Select Employee" ForeColor="Red"
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:Button ID="BtnSelect" runat="server" CssClass="btn" Text="SELECT"
                                OnClick="BtnSelect_Click" Width="104px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl" runat="server" ForeColor="#006600"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table style="width: 100%">
                            <tr>
                                <td bgcolor="#FFFFCC">
                                    <table class="style3">
                                        <tr>
                                            <td class="style6">Employee Name :</td>
                                            <td class="style9">
                                                <asp:Label ID="LblName" runat="server"></asp:Label>
                                            </td>
                                            <td class="style6">Account Number :</td>
                                            <td class="style9">
                                                <asp:Label ID="LblAccNo" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Department:</td>
                                            <td class="style9">
                                                <asp:Label ID="LblDept" runat="server"></asp:Label>
                                            </td>
                                            <td class="style6">TravelAllowance : </td>
                                            <td>
                                                <asp:Label ID="LblTravAll" runat="server"></asp:Label>                                               
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Basic Pay :</td>
                                            <td class="style9">
                                                <asp:Label ID="LblBasicPay" runat="server"></asp:Label>
                                            </td>
                                            <td class="style6">LunchAllowance : </td>
                                            <td>
                                               <asp:Label ID="LblLunAll" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Salary : </td>
                                            <td class="style9">
                                                <asp:Label ID="LblSalary" runat="server"></asp:Label>
                                            </td>
                                            <td class="style6">MedicalAllowance : </td>
                                            <td>
                                                <asp:Label ID="LblMedAll" runat="server"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                         <tr>
                                            <td class="style6">CIT No :</td>
                                            <td class="style9">
                                                <asp:Label ID="LblCitNo" runat="server"></asp:Label>
                                            </td>
                                            <td class="style6">PF NO :</td>
                                            <td>
                                                <asp:Label ID="LblPfNo" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Total working Days</td>
                                            <td class="style9">
                                                <asp:Label ID="LblTotWD" runat="server">0</asp:Label>
                                            </td>
                                            <td class="style6">Total Salary</td>
                                            <td>
                                                <asp:Label ID="LblTotSal" runat="server">0</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Total Leave :</td>
                                            <td class="style9">
                                                <asp:Label ID="LblLeave" runat="server">0</asp:Label>
                                            </td>
                                            <td class="style6">Leave Deduction : </td>
                                            <td>
                                                <asp:Label ID="LblLeaveDeduce" runat="server">0</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Tax Deduction:</td>
                                            <td class="style9">
                                                <asp:Label ID="LblTax" runat="server">0</asp:Label>
                                            </td>
                                            <td class="style6">Net Salary : </td>
                                            <td>
                                                <asp:Label ID="LblNetSal" runat="server">0</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td class="btn">
                                                <asp:Button ID="BtnGenerate" runat="server" Text="Generate" CssClass="btn" OnClick="BtnGenerate_Click" />
                                            </td>
                                        </tr>

                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
    </table>
</asp:Content>
