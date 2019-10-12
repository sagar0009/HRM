<%@ Page Title="" Language="C#" MasterPageFile="~/PayRoll/PayRoll.Master" AutoEventWireup="true" CodeBehind="SalaryReport.aspx.cs" Inherits="FinalP.PayRoll.SalaryReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style type="text/css">
        .style1 {
            width: 627px;
        }

        .style2 {
            width: 103px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead" colspan="2">&nbsp;Salary Report</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <table class="style1">
                    <tr>
                        <td class="lbl">Month :
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlMonth" runat="server" CssClass="txt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>ALL</asp:ListItem>
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
                                ControlToValidate="DdlMonth" ErrorMessage="Select Month" ForeColor="Red"
                                InitialValue="SELECT" SetFocusOnError="True">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td class="lbl">Year :
                        </td>
                        <td>
                            <asp:TextBox ID="TBYear" runat="server" CssClass="txt" Width="110px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ControlToValidate="TBYear" ErrorMessage="Enter Date" ForeColor="Red"
                                SetFocusOnError="True">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Select Class :
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlClass" runat="server" CssClass="txt"
                                AutoPostBack="True" OnSelectedIndexChanged="DdlClass_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="DdlClass" ErrorMessage="Select Class" ForeColor="Red"
                                InitialValue="SELECT" SetFocusOnError="True">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td class="lbl">Select Employee :
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlEmp" runat="server" CssClass="txt">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="DdlEmp" ErrorMessage="Select Employee" ForeColor="Red"
                                InitialValue="SELECT" SetFocusOnError="True">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:Button ID="BtnSelect" runat="server" CssClass="btn" Text="SELECT"
                                OnClick="BtnSelect_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GVSalRep" runat="server" CellPadding="4" ForeColor="Black"
                    GridLines="Vertical" AutoGenerateColumns="False" Width="779px"
                    OnRowCommand="GVSalRep_RowCommand" BackColor="White"
                    BorderColor="#FFCCFF" BorderStyle="Solid" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#FFCCFF" Font-Bold="True" ForeColor="#006600" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                    <Columns>
                        <asp:BoundField HeaderText="Name" DataField="EmployeeName" />
                        <asp:BoundField HeaderText="BasicPay" DataField="BasicPay" />
                        <asp:BoundField HeaderText="Salary" DataField="Salary" />
                        <%--<asp:BoundField HeaderText="T_ALL" DataField="travellallowance" />
                    <asp:BoundField HeaderText="M_ALL" DataField="medicalallowance" />
                    <asp:BoundField HeaderText="W_ALL" DataField="washingallowance" />--%>
                        <%-- <asp:BoundField HeaderText="DA" DataField="da" />
                    <asp:BoundField HeaderText="HR" DataField="hr" />
                    <asp:BoundField HeaderText="Leave" DataField="leavededucation" />--%>
                        <asp:BoundField HeaderText="Deducaton" DataField="Deducation" />
                        <asp:BoundField HeaderText="Allowance" DataField="Allowance" />
                        <asp:BoundField HeaderText="NetPay" DataField="NetPAy" />
                        <asp:TemplateField HeaderText="Salary Receipt">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="Salary Receipt" ForeColor="Red" CommandArgument='<%#Eval("SID") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
