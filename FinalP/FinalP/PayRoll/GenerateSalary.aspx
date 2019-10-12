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
            width: 217px;
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
                        </td>
                        <td class="style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="DdlMonth" ErrorMessage="Select month" ForeColor="Red"
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="lbl">Year :
                        </td>
                        <td>
                            <asp:TextBox ID="TBYear" runat="server" CssClass="txt" Width="110px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ControlToValidate="TBYear" ErrorMessage="Enter the year" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>                                              
                        <td class="lbl">Select Employee :
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlEmployee" runat="server" CssClass="txt">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="DdlEmployee" ErrorMessage="Select Employee" ForeColor="Red"
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
                        <table style="width:100%">
                            <tr>
                                <td bgcolor="#FFCCFF" class="style4" style="font-weight: 700">Employee Name :
                                    <asp:Label ID="LblName" runat="server"></asp:Label>
                                     <br />
                                    Account No :
                                    <asp:Label ID="LblAcNo" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFCC">
                                    <table class="style3">
                                        <tr>
                                            <td class="style6">Basic Pay :</td>
                                            <td class="style9">
                                                <asp:Label ID="LblBasicPay" runat="server"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td class="lbl">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Salary :
                                            </td>
                                            <td class="style9">
                                                <asp:Label ID="LblSalary" runat="server"></asp:Label>
                                            </td>
                                            <td class="lbl">TravelAllowance : </td>
                                            <td class="lbl">&nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="TBTravAll" runat="server" CssClass="txt" Width="70px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Total Leave :</td>
                                            <td class="style9">
                                                <asp:Label ID="LblLeave" runat="server">0</asp:Label>
                                            </td>
                                            <td class="lbl">MedicalAllowance : </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="TBMedAll" runat="server" CssClass="txt" Width="70px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Approve Leave :
                                            </td>
                                            <td class="style9">
                                                <asp:Label ID="LblLeaveApproval" runat="server">0</asp:Label>
                                            </td>
                                            <td class="lbl">&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Leave Deduction :
                                            </td>
                                            <td class="style9">
                                                <asp:Label ID="LblLeaveDeduce" runat="server">0</asp:Label>
                                            </td>
                                            <td class="lbl">LunchAllowance : </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="TBLunchAll" runat="server" CssClass="txt" Width="70px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style7">&nbsp;</td>
                                            <td class="style9">&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                       <%-- <tr>
                                            <td class="style6">DA :
                                            </td>
                                            <td class="style9">
                                                <asp:TextBox ID="txtda" runat="server" CssClass="txt" Width="50px"
                                                    AutoPostBack="True" OnTextChanged="txtda_TextChanged"></asp:TextBox>
                                                %&nbsp;
                                                <asp:Label ID="lblda" runat="server"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">HR :
                                            </td>
                                            <td class="style9">
                                                <asp:TextBox ID="txthr" runat="server" CssClass="txt" Width="50px"
                                                    AutoPostBack="True" OnTextChanged="txthr_TextChanged"></asp:TextBox>
                                                %&nbsp;
                                                <asp:Label ID="lblhr" runat="server"></asp:Label>
                                            </td>
                                            <td colspan="3">
                                                <asp:Button ID="btngeneratesalary" runat="server" CssClass="btn" Text="Generate Salary"
                                                    Width="160px" Height="40px" OnClick="btngeneratesalary_Click" />
                                            </td>
                                        </tr>--%>
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
