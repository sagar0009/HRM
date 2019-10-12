﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PayRoll/PayRoll.Master" AutoEventWireup="true" CodeBehind="YearReport.aspx.cs" Inherits="FinalP.PayRoll.YearReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead" colspan="2">&nbsp;Yearly Salary Report</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <table class="style1">
                    <tr>
                        <td class="lbl">Year :
                        </td>
                        <td>
                            <asp:TextBox ID="TBYear" runat="server" CssClass="txt" Width="110px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ControlToValidate="TBYear" ErrorMessage="Enter Year" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="lbl">&nbsp;</td>
                        <td>&nbsp;</td>
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
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="lbl">Select Employee :
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlEmp" runat="server" CssClass="txt" OnSelectedIndexChanged="DdlEmp_SelectedIndexChanged" >
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="DdlEmp" ErrorMessage="Select Employee" ForeColor="Red"
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
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
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GVSalDet" runat="server" CellPadding="4" ForeColor="Black"
                    GridLines="Vertical" AutoGenerateColumns="False" Width="759px"
                    OnRowCommand="GVSalDet_RowCommand" BackColor="White"
                    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
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
                        <asp:TemplateField HeaderText="View Detail">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="View Detail" ForeColor="Red" CommandArgument='<%#Eval("BankAcNo") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
