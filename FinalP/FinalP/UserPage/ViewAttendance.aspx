<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage/UPMaster.Master" AutoEventWireup="true" CodeBehind="ViewAttendance.aspx.cs" Inherits="FinalP.UserPage.ViewAttendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Attendance Reports</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="left" class="style4">                   
                    <tr>
                        <td class="lbl">Select Date :</td>
                        <td class="style6">
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC"
                                BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest"
                                Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px"
                                ShowGridLines="True" Width="220px">
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt"
                                    ForeColor="#FFFFCC" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                            </asp:Calendar>
                        </td>
                        <td class="style5" valign="bottom">
                            <asp:Button ID="BtnSelect" runat="server" CssClass="btn" OnClick="BtnSelect_Click"
                                Text="Select" />
                        </td>
                        <td valign="bottom">
                            <asp:Label ID="LblCnt" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GVAttDetails" runat="server" EmptyDataText="No Records Found" AutoGenerateColumns="False"
                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="659px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>                        
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                        <asp:BoundField DataField="CheckIn" HeaderText="Check In" />
                        <asp:BoundField DataField="CheckOut" HeaderText="Check Out" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
