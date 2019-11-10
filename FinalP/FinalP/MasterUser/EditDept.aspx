<%@ Page Title="" Language="C#" MasterPageFile="~/MasterUser/MUMaster.Master" AutoEventWireup="true" CodeBehind="EditDept.aspx.cs" Inherits="FinalP.MasterUser.EditDept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Department Details</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="btn">
                <asp:Button ID="BtnEdit" runat="server" CssClass="btn" OnClick="BtnEdit_Click"
                    Text="Edit Department" Width="160px" />
                &nbsp;
            <asp:Button ID="BtnView" runat="server" CssClass="btn" Text="View Department"
                Width="160px" OnClick="BtnView_Click" />
                &nbsp;   
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <asp:GridView ID="GVDept" OnRowCommand="GVDept_RowCommand" HorizontalAlign="Center" runat="server" AutoGenerateColumns="False">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Department Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblDept" runat="server" Text='<% # Eval("DepartmentName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <%--<asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LnkEdit" runat="server" ForeColor="Green" Text="Edit" CommandName="edit" CommandArgument='<%#Eval("DeptId") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
                                            <asp:TemplateField HeaderText="Remove">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LnkRemove" CommandName="remove" runat="server" ForeColor="Red" Text="Remove" CommandArgument='<%#Eval("DeptId") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <table>
                                        <tr>
                                            <td>Department Name:</td>
                                            <td>
                                                <asp:TextBox ID="TBDeptName" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td class="btn">
                                                <asp:Button ID="BtnAdd" OnClick="BtnAdd_Click" runat="server" Text="Add Department" />
                                            </td>
                                        </tr>

                                    </table>
                                </asp:View>


                                <asp:View ID="View2" runat="server">
                                    <table class="tbl">
                                        <tr>
                                            <td class="tblhead">Edit Department</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>New Department Name:</td>
                                            <td>
                                                <asp:TextBox ID="TBDept" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Status</td>
                                            <td>
                                                <asp:DropDownList ID="DdlSts" runat="server">
                                                    <asp:ListItem>Select</asp:ListItem>
                                                    <asp:ListItem>Active</asp:ListItem>
                                                    <asp:ListItem>Dismissed</asp:ListItem>
                                                </asp:DropDownList></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td class="btn">
                                                <asp:Button ID="BtnSave" OnClick="BtnSave_Click" runat="server" Text="Save" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
