<%@ Page Title="" Language="C#" MasterPageFile="~/PayRoll/PayRoll.Master" AutoEventWireup="true" CodeBehind="ReportDetails.aspx.cs" Inherits="FinalP.PayRoll.ReportDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">

       
        .style1
        {
            width: 749px;
        }
        .style2
        {
            width: 69px;
        }
       
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <table class="tbl">
        <tr>
            <td class="tblhead">
                <table class="style1">
                    <tr>
                        <td class="style2">
                            <asp:Button ID="BtnBack" runat="server" BorderColor="White" BorderStyle="Solid" 
                                BorderWidth="2px" CssClass="btn" Height="30px" 
                                PostBackUrl="YearReport.aspx" Text="BACK" Width="80px"/>
                        </td>
                        <td>
            My Salary Detail</td>
                    </tr>
                </table>
            </td>
        </tr>
       <%-- <tr>
            <td>
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                AutoDataBind="true" />
            </td>
        </tr>--%>
    </table>
</asp:Content>
