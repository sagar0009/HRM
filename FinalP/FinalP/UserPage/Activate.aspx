<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage/UPMaster.Master" AutoEventWireup="true" CodeBehind="Activate.aspx.cs" Inherits="FinalP.UserPage.Activate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .style1 {
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Welcome to ABC System UserPage</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>

                <table>
                    <tr>
                        <td class="lbl">Email</td>
                        <td>
                            <asp:TextBox ID="TBEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Code</td>
                        <td>
                            <asp:TextBox ID="TBCode" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>                        
                        <td class="lbl">Upload Image
                        </td>
                        <td >
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td class="style9">&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button CssClass="btn" ID="BtnAct" runat="server" Text="Activate" OnClick="BtnAct_Click" Width="159px" />
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
    </table>
</asp:Content>
