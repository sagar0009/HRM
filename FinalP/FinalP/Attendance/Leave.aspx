<%@ Page Title="" Language="C#" MasterPageFile="~/Attendance/Attendance.Master" AutoEventWireup="true" CodeBehind="Leave.aspx.cs" Inherits="FinalP.Attendance.Leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Manage Leave</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnNleave" runat="server" CssClass="btn" OnClick="BtnNleave_Click"
                Text="New Leave" Width="160px" />
                &nbsp;
            <asp:Button ID="BtnAppLeave" runat="server" CssClass="btn" Text="Approve Leave"
                Width="160px" OnClick="BtnAppLeave_Click" />
                &nbsp;
            <asp:Button ID="BtnCncLeave" runat="server" CssClass="btn" Text="Cancel Leave"
                Width="160px" OnClick="BtnCncLeave_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="tbl">
                            <tr>
                                <td class="tblhead">New Leave Report</td>
                            </tr>
                            <tr>
                                <td>Select Department :
                                    <asp:DropDownList ID="DdlDept" AutoPostBack="true" OnSelectedIndexChanged="DdlDept_SelectedIndexChanged" runat="server" CssClass="txt"  DataTextField="DepartmentName" DataValueField="DeptId" >
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Select Employee :
                                <asp:DropDownList ID="DdlEmp" runat="server" CssClass="txt" AutoPostBack="true" DataTextField="FirstName" DataValueField="EmpId">
                                </asp:DropDownList>
                                    <asp:Button ID="BtnSelect" runat="server" CssClass="btn"
                                        OnClick="BtnSelect_Click" Text="Select" />
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Total New Leave =
                                    <asp:Label ID="LblNew" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GVNewLeave" runat="server" AutoGenerateColumns="False" EmptyDataText="no records found"
                                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"
                                        CellPadding="4" GridLines="Vertical" Width="761px"
                                        OnRowCommand="GVNewLeave_RowCommand" ForeColor="Black">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="StartDate" DataFormatString="{0:dd MMM yyyy}"
                                                HeaderText="From Date">
                                                <ItemStyle Width="120px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="EndDate" DataFormatString="{0:dd MMM yyyy}"
                                                HeaderText="To Date">
                                                <ItemStyle Width="120px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="NoDays" HeaderText="Days">
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle Width="50px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Reason" HeaderText="Reason">
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Approve">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" Text="Approve" ID="LnkApp" ForeColor="Green" CommandName="app" CommandArgument='<%#Eval("LeaveId") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Cancel">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" Text="Cancel" ID="LnkRej" ForeColor="Red" CommandName="rej" CommandArgument='<%#Eval("LeaveId") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" />
                                        <HeaderStyle BackColor="#FFCCFF" Font-Bold="True" ForeColor="#006600" />
                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#F7F7DE" />
                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table class="tbl">
                            <tr>
                                <td class="tblhead">Approve Leave Report</td>
                            </tr>
                            <tr>
                                <td>Select Department :
                                <asp:DropDownList ID="DdlDept0" OnSelectedIndexChanged="DdlDept_SelectedIndexChanged" AutoPostBack="true" runat="server" CssClass="txt" DataTextField="DepartmentName" DataValueField="DeptId">
                                </asp:DropDownList>                                    
                                </td>
                            </tr>
                            <tr>
                                <td>Select Employee :
                                <asp:DropDownList ID="DdlEmp0" runat="server" CssClass="txt" DataTextField="FirstName" DataValueField="EmpId">
                                </asp:DropDownList>
                                    <asp:Button ID="BtnSelect0" runat="server" CssClass="btn"
                                        OnClick="BtnSelect0_Click" Text="Select" />
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Total Apporved Leave =
                                    <asp:Label ID="LblApp" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GVAppLeave" runat="server" AutoGenerateColumns="False"  EmptyDataText="no records found"
                                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"
                                        CellPadding="4" GridLines="Vertical" OnRowCommand="GVAppLeave_RowCommand"
                                        Width="761px" ForeColor="Black">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Startdate" DataFormatString="{0:dd MMM yyyy}"
                                                HeaderText="From Date">
                                                <ItemStyle Width="120px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Enddate" DataFormatString="{0:dd MMM yyyy}"
                                                HeaderText="To Date">
                                                <ItemStyle Width="120px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="NoDays" HeaderText="Days">
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle Width="50px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Reason" HeaderText="Reason">
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:BoundField>

                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemStyle Width="30px" />
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LnkDel" runat="server" CommandArgument='<%#Eval("LeaveId") %>'
                                                        CommandName="rej" ForeColor="Red" Text="Delete"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" />
                                        <HeaderStyle BackColor="#FFCCFF" Font-Bold="True" ForeColor="#006600" />
                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#F7F7DE" />
                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <table class="tbl">
                            <tr>
                                <td class="tblhead">Cancel Leave Report</td>
                            </tr>
                            <tr>
                                <td>Select Department :
                                <asp:DropDownList ID="DdlDept1" AutoPostBack="true" OnSelectedIndexChanged="DdlDept_SelectedIndexChanged" runat="server" CssClass="txt" DataTextField="DepartmentName" DataValueField="DeptId" >
                                </asp:DropDownList>                                    
                                </td>
                            </tr>
                            <tr>
                                <td>Select Employee :
                                <asp:DropDownList ID="DdlEmp1" runat="server" CssClass="txt" DataTextField="FirstName" DataValueField="EmpId">
                                </asp:DropDownList>
                                    <asp:Button ID="BtnSelect1" runat="server" CssClass="btn"
                                        OnClick="BtnSelect1_Click" Text="Select" />
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>Total Rejected Leave =
                                    <asp:Label ID="LblRej" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GVRejLeave" runat="server" AutoGenerateColumns="False"  EmptyDataText="no records found"
                                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"
                                        CellPadding="4" GridLines="Vertical" OnRowCommand="GVRejLeave_RowCommand"
                                        Width="761px" ForeColor="Black">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="startdate" DataFormatString="{0:dd MMM yyyy}"
                                                HeaderText="From Date">
                                                <ItemStyle Width="120px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Enddate" DataFormatString="{0:dd MMM yyyy}"
                                                HeaderText="To Date">
                                                <ItemStyle Width="120px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="NoDays" HeaderText="Days">
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ItemStyle Width="50px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Reason" HeaderText="Reason">
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemStyle Width="30px" />
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LnkDel0" runat="server" CommandArgument='<%#Eval("LeaveId") %>'
                                                        CommandName="rej" ForeColor="Red" Text="Delete"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" />
                                        <HeaderStyle BackColor="#FFCCFF" Font-Bold="True" ForeColor="#006600" />
                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#F7F7DE" />
                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                    </asp:GridView>
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
