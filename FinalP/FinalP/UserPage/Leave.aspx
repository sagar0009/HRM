<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage/UPMaster.Master" AutoEventWireup="true" CodeBehind="Leave.aspx.cs" Inherits="FinalP.UserPage.Leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .style4 {
            width: 403px;
        }

        .style5 {
            width: 551px;
        }

        .style6 {
            width: 288px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Leave Formm<br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnApply" runat="server" CssClass="btn" OnClick="BtnApply_Click"
                    Text="Apply For Leave" Width="180px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="LveStat" runat="server" CssClass="btn" OnClick="LveStat_Click"
                    Text="Leave Status Report" Width="180px" />
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style5">
                    <tr>
                        <td>
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table align="center" class="style4">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">Leave Reason :</td>
                                            <td>
                                                <asp:TextBox ID="TBRsn" runat="server" CssClass="txt" Height="50px"
                                                    TextMode="MultiLine" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">No of Days :</td>
                                            <td>
                                                <asp:DropDownList ID="DdlDays" runat="server" CssClass="txt" Width="50px">
                                                    <asp:ListItem>01</asp:ListItem>
                                                    <asp:ListItem>02</asp:ListItem>
                                                    <asp:ListItem>03</asp:ListItem>
                                                    <asp:ListItem>04</asp:ListItem>
                                                    <asp:ListItem>05</asp:ListItem>
                                                    <asp:ListItem>06</asp:ListItem>
                                                    <asp:ListItem>07</asp:ListItem>
                                                    <asp:ListItem>08</asp:ListItem>
                                                    <asp:ListItem>09</asp:ListItem>
                                                    <asp:ListItem>10</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">Start Date</td>
                                            <td>
                                                <asp:TextBox ID="TBStartDate" runat="server" ReadOnly="true"></asp:TextBox>
                                                &nbsp;
                                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Cal.png" Height="15px" OnClick="ImageButton1_Click" />
                                                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender"></asp:Calendar>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">End Date</td>
                                            <td>
                                                <asp:TextBox ID="TBEndDate" runat="server" ReadOnly="true"></asp:TextBox>&nbsp; 
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Cal.png" Height="15px" OnClick="ImageButton2_Click" />
                                                <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" OnDayRender="Calendar2_DayRender"></asp:Calendar>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Button ID="BtnApply0" runat="server" CssClass="btn"
                                                    OnClick="BtnApply0_Click" Text="Apply Leave" ToolTip=" " Width="120px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>My Total Leave</td>
                                            <td>
                                                <asp:Label ID="lbl" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table class="style6">
                                        <tr>
                                            <td>Total Leave =
                                    <asp:Label ID="LblNew" runat="server"></asp:Label>
                                </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:GridView ID="GVLveStat" runat="server" AutoGenerateColumns="False"
                                                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"
                                                    CellPadding="4" ForeColor="Black" GridLines="Vertical"
                                                    Style="text-align: center" Width="523px">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Reason" HeaderText="Leave Reason" />
                                                        <asp:BoundField DataField="Nodays" HeaderText="Days" />
                                                        <asp:BoundField DataField="StartDate" HeaderText="From" />
                                                        <asp:BoundField DataField="EndDate" HeaderText="To" />
                                                        <asp:BoundField DataField="LveStatus" HeaderText="Status" />
                                                    </Columns>
                                                    <FooterStyle BackColor="#CCCC99" />
                                                    <HeaderStyle BackColor="#8506A9" Font-Bold="True" ForeColor="White" />
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
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
