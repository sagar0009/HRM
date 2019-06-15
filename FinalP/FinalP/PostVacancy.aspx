<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostVacancy.aspx.cs" Inherits="FinalP.PostVacancy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vacancy Announcements</title>
    <style>
        .header {
            margin: auto;
            background-color: #f1f1f1;
            padding: 10px;
            width: 60%;
            text-align: center;
        }
        .center
        {
            margin: auto;
            width: 60%;
            
            padding: 10px;
            font:bold 12px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1> Vacancy! Vacancy! Vacancy!</h1>
        </div>
        <div  class="center" >
            <asp:Table ID="Table1" runat="server" CssClass="center">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right">Post</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" ></asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left"> </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right">Number of Vacancy</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">
                        <asp:TextBox ID="TBPostVac" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" ></asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left"> </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right">Experience Required</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">
                        <asp:TextBox ID="TBExpReq" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right">
                        <asp:Button ID="BtnView" runat="server" Text="View More" OnClick="BtnSubmit1_Click" />
                    </asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">
                       <asp:Button ID="BtnBack" runat="server"  Width  ="60%" Text="Back"  OnClick="BtnSubmit2_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <%--<div class="center">
            <asp:Label ID="Label1" runat="server" Text="Post"></asp:Label>
            <asp:TextBox ID="TBPostVac" runat="server"></asp:TextBox>
            <br /> <br />
             <asp:Label ID="Label2" runat="server" Text="Number of Vacancy"></asp:Label>
            <asp:TextBox ID="TBVacNo" runat="server"></asp:TextBox>
            <br /> <br />
             <asp:Label ID="Label3" runat="server" Text=" Experience Required"></asp:Label>
            <asp:TextBox ID="TBExpReq" runat="server"></asp:TextBox>
            <br /> <br />

        </div>--%>
    </form>
</body>
</html>
