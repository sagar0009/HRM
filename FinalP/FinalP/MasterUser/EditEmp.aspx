﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterUser/MUMaster.Master" AutoEventWireup="true" CodeBehind="EditEmp.aspx.cs" Inherits="FinalP.MasterUser.EditEmp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Employee Profile</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>

            <td>Select Department :
                <asp:DropDownList ID="DdlDept" AutoPostBack="true" OnSelectedIndexChanged="DdlDept_SelectedIndexChanged" runat="server" CssClass="txt" DataTextField="DepartmentName" DataValueField="DeptId">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Select Employee :
                                <asp:DropDownList ID="DdlEmp" runat="server" CssClass="txt" DataTextField="FirstName" DataValueField="EmpId">
                                </asp:DropDownList>
                <asp:Button ID="BtnSelect" runat="server" CssClass="btn"
                    OnClick="BtnSelect_Click" Text="Select" />
                &nbsp;
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
                                            <td class="style6">Email: </td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbEmail" ReadOnly="true" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="style6">Department:</td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbDept" ReadOnly="true" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Post: </td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbPost" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="style6">Class:</td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbClass" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Address: </td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbAdd" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="style6">Degree:</td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbDeg" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Gender: </td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbGender" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="style6">Marital Status:</td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbMarSts" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">PAN: </td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbPan" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="style6">PF No:</td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbPFN" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">CIT No: </td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbCit" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="style6">CIT %:</td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbCitPer" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Bank Name: </td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbBnkNam" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="style6">Account Number:</td>
                                            <td class="style9">
                                                <asp:TextBox ID="TbAccNo" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td class="style6">&nbsp; </td>
                                            <td class="style6">Role
                                                
                                            </td>
                                            <td class="style9">
                                                <asp:TextBox ID="TBRole" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="style9">
                                                <asp:DropDownList ID="DdlRole" DataTextField="Role" DataValueField="RoleId" Visible="false" runat="server">
                                                    
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td class="style9">
                                                <asp:Button ID="BtnSave" runat="server" Text="Update Details" OnClick="BtnSave_Click" />
                                            </td>
                                            <td class="style6">
                                                <asp:Button ID="BtnEdit" runat="server" Text="Edit Details" OnClick="BtnEdit_Click" />
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
