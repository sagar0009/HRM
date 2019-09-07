﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="VacancyReceived.aspx.cs" Inherits="FinalP.VacancyReceived" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="header">
            <h1>Received Applications</h1>
        </div>
        <div class="center">
            <asp:TextBox ID="TBSearch" Width="40%" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:DropDownList ID="DDSearch" Width="25%" OnSelectedIndexChanged="DDSearch_SelectedIndexChanged" runat="server">
                <asp:ListItem Selected="True" Value="-1">Select</asp:ListItem>
                <asp:ListItem Value="1">Fname</asp:ListItem>
                <asp:ListItem Value="2">Post</asp:ListItem>
                <%--<asp:ListItem Value="3">DateOfVacancy</asp:ListItem>--%>
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:Button ID="BtnSearch" Width="20%" OnClick="BtnSearch_Click" runat="server" Text="Search" />
        </div>
        <div class="center">
            <asp:GridView ID="GVAppRec" runat="server" EmptyDataText="No Records Found" AllowPaging="false" CssClass="center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="ReceivalID">
                        <ItemTemplate>
                            <asp:Label ID="LblRecId" runat="server" Text='<% # Eval("ReceivalId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ApplicantID">
                        <ItemTemplate>
                            <asp:Label ID="LblApId" runat="server" Text='<% # Eval("ApplicantId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FirstName">
                        <ItemTemplate>
                            <asp:Label ID="LblFname" runat="server" Text='<% # Eval("Fname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="LastName">
                        <ItemTemplate>
                            <asp:Label ID="LblLname" runat="server" Text='<% # Eval("Lname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PostName">
                        <ItemTemplate>
                            <asp:Label ID="LblPsId" runat="server" Text='<% # Eval("PostName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:CheckBox ID="CkSts" OnCheckedChanged="CkSts_CheckedChanged" Checked='<%# Eval("IsShortListed") == DBNull.Value ? false : Eval("IsShortListed") %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
            <script type="text/javascript">
                $("body").on("click", "#btnExport", function () {
                    html2canvas($('[id*=GVAppRec]')[0], {
                        onrendered: function (canvas) {
                            var data = canvas.toDataURL();
                            var docDefinition = {
                                content: [{
                                    image: data,
                                    width: 500
                                }]
                            };
                            pdfMake.createPdf(docDefinition).download("ReceivedApplications.pdf");
                        }
                    });
                });
            </script>
        </div>
        <div align="center">
            <asp:Button ID="BtnDone" Width="20%" runat="server" Text="Done" CssClass="center " OnClick="BtnDone_Click" />
            <asp:Button ID="BtnBack" Width="20%" runat="server" Text="Back" CssClass="center " OnClick="BtnBack_Click" />
            <input type="button" style="width: 20%" id="btnExport" class="center" value="Export To Pdf" />

        </div>
    </form>
</asp:Content>
