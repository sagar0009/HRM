<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage/UPMaster.Master" AutoEventWireup="true"
    CodeBehind="DivExportTest.aspx.cs" EnableEventValidation="false" Inherits="FinalP.DivExportTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .style1 {
            width: 699px;
        }

        .style2 {
            width: 103px;
        }

        .style3 {
            width: 702px;
        }

        .style4 {
            height: 32px;
        }

        .style6 {
            text-align: right;
            color: Green;
            width: 250px;
        }

        .style7 {
            width: 217px;
        }

        .style9 {
            width: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="MyDet" runat="server">
        <table class="tbl">
            <tr>
                <td class="tblhead">My Profile</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table style="width: 100%">
                        <tr>
                            <td bgcolor="#FFFFCC">
                                <table class="style3">
                                    <tr>
                                        <td class="style6">Email: </td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbEmail" ReadOnly="true" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style6">Department:</td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbDept" ReadOnly="true" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style6">Post: </td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbPost" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style6">Class:</td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbClass" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style6">Address: </td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbAdd" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style6">Degree:</td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbDeg" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style6">Gender: </td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbGender" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style6">Marital Status:</td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbMarSts" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style6">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style6">PAN: </td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbPan" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style6">PF No:</td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbPFN" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style6">CIT No: </td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbCit" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style6">CIT %:</td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbCitPer" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style6">Bank Name: </td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbBnkNam" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style6">Account Number:</td>
                                        <td class="style9">
                                            <asp:TextBox ID="TbAccNo" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
                                    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
                                    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>

                                    <script type="text/javascript">
                                        $("body").on("click", "#BtnPrint", function () {
                                            html2canvas($('[id*=MyDet]')[0], {
                                                onrendered: function (canvas) {
                                                    var data = canvas.toDataURL();
                                                    var docDefinition = {
                                                        content: [{
                                                            image: data,
                                                            width: 500
                                                        }]
                                                    };
                                                    pdfMake.createPdf(docDefinition).download("MyDetails.pdf");
                                                }
                                            });
                                        });
                                    </script>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="style9">&nbsp;</td>
                                        <td class="style6">
                                            <input type="button" id="BtnPrint" class="center" value="Export To Pdf" />
                                        </td>
                                    </tr>

                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>


</asp:Content>
