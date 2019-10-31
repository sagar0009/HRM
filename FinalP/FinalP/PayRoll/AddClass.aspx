﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PayRoll/PayRoll.Master" AutoEventWireup="true" CodeBehind="AddClass.aspx.cs" Inherits="FinalP.PayRoll.AddClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .style1 {
            width: 755px;
        }
        .rtol{
          border:solid 1px green;
          width:120px;
          padding-left:3px;
          background:#e6ffee;
          direction:rtl;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">ADD New Class</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style1">
                    <tr>
                        <td class="lbl">Class Name :
                        </td>
                        <td>
                            <asp:TextBox ID="TBClass" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="TBClass" ErrorMessage="Enter the class" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Basic Pay :</td>
                        <td>
                            <asp:TextBox ID="TBBasicPay" runat="server" placeholder="0" CssClass="rtol"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="TBBasicPay" ErrorMessage="Enter the Basic Payment" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Salary :
                        </td>
                        <td>
                            <asp:TextBox ID="TBSalary" runat="server" placeholder="0" CssClass="rtol"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="TBSalary" ErrorMessage="Enter the salary" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">TravelAllowance :
                        </td>
                        <td>
                            <asp:TextBox ID="TBTravAll" runat="server" placeholder="0" CssClass="rtol"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="TBTravAll" ErrorMessage="Enter the Travelling Allowance" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">MedicalAllowance :
                        </td>
                        <td>
                            <asp:TextBox ID="TBMedAll" runat="server" placeholder="0" CssClass="rtol"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ControlToValidate="TBMedAll" ErrorMessage="Enter the Medical Allowance" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">LunchAllowance :
                        </td>
                        <td>
                            <asp:TextBox ID="TBLunchAll" runat="server" placeholder="0" CssClass="rtol"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                ControlToValidate="TBLunchAll" ErrorMessage="Enter the Lunch Allowance" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="BtnAdd" runat="server" CssClass="btn" OnClick="BtnAdd_Click"
                                Text="ADD Class" Width="129px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align: left">
                            <asp:GridView ID="GVClass" runat="server" AutoGenerateDeleteButton="True"
                                CellPadding="4" ForeColor="Black" GridLines="Vertical"
                                AutoGenerateColumns="False" DataKeyNames="ClsId" EmptyDataText="No records Found"
                                OnRowDeleting="GVClass_RowDeleting" Width="600px" BackColor="White"
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
                                    <asp:BoundField HeaderText="Class" DataField="ClsName" />
                                    <asp:BoundField HeaderText="Basic Pay" DataField="BasicPay" />
                                    <asp:BoundField HeaderText="Salary" DataField="Salary" />
                                    <asp:BoundField HeaderText="Travel_ALL" DataField="TravAllow" />
                                    <asp:BoundField HeaderText="Medical_ALL" DataField="MedAllow" />
                                    <asp:BoundField HeaderText="Lunch_ALL" DataField="LunchAll" />
                                </Columns>
                            </asp:GridView>
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
