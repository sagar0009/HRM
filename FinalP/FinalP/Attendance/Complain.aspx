<%@ Page Title="" Language="C#" MasterPageFile="~/Attendance/Attendance.Master" AutoEventWireup="true" CodeBehind="Complain.aspx.cs" Inherits="FinalP.Attendance.Complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .style4 {
            width: 625px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">COMPLAIN MODULE</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="style1">
                            <tr>
                                <td>Total Complain =
                                <asp:Label ID="LblComplain" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GVComplain" runat="server" AutoGenerateColumns="False"
                                        CellPadding="4" ForeColor="#333333" GridLines="None"
                                        OnRowCommand="GVComplain_RowCommand" Style="text-align: center"
                                        Width="659px" OnSelectedIndexChanged="GVComplain_SelectedIndexChanged">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="rollno" HeaderText="EId" />
                                            <asp:BoundField DataField="name" HeaderText="Employee Name" />
                                            <asp:BoundField DataField="subject" HeaderText="Subject" />
                                            <asp:BoundField DataField="message" HeaderText="Complain" />
                                            <asp:BoundField DataField="reply" HeaderText="Reply" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LnkReply" runat="server" ForeColor="Red" Text="Reply" CommandArgument='<%#Eval("CID") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
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
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table align="center" class="style4" style="border: thin solid #FF0000">
                            <tr>
                                <td class="tblhead">Reply Complain
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>EId No :
                                <asp:Label ID="LblEid" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Name :
                                <asp:Label ID="LblName" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Subject :
                                <asp:Label ID="LblSub" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Complain :
                                <asp:Label ID="LblCmp" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Answer :
                                <asp:TextBox ID="TBAns" runat="server" CssClass="txt" Height="60px"
                                    TextMode="MultiLine" Width="260px">
                                </asp:TextBox>
                                    <asp:Button ID="BtnReply" runat="server" CssClass="btn"
                                        OnClick="BtnReply_Click" Text="Reply" />
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
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
