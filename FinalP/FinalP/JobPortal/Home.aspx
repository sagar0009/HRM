<%@ Page Title="" Language="C#" MasterPageFile="Portal.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinalP.JobPortal.Home" %>

<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    vacancy synopsis
   <form id="frm1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Panel ID="Panel1" runat="server">
                    <asp:DataList ID="DataList1" RepeatColumns="4" runat="server">
                        <ItemTemplate>
                            <asp:Table ID="Table1" runat="server" Style="width: 33%;">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Right"> Post:</asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left">
                                        <asp:TextBox ID="TBPost" Text='<%#Eval("PostName")%>' ReadOnly="true" runat="server" BorderStyle="None"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Right"> Type:</asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left">
                                        <asp:TextBox ID="TBType" Text='<%#Eval("JobType")%>' ReadOnly="true" runat="server" BorderStyle="None"></asp:TextBox>
                                        
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Right"> Time Remaining:</asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left">
                                        <asp:TextBox ID="TBTenure" ReadOnly="true" runat="server" BorderStyle="None"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Center" ColumnSpan="2">
                                        <asp:Button ID="BtnDetails" runat="server" Text="View Details" CommandArgument='<%#Eval("VacancyId")%>' OnClick="BtnDetails_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </ItemTemplate>
                    </asp:DataList>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
   </form>
</asp:Content>
