<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FinalP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Application ShortList</h1>
        </div>
        <div class="center">
            <asp:GridView ID="GVShortList" runat="server" CssClass="center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
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
                    <asp:TemplateField HeaderText="PostID">
                        <ItemTemplate>
                            <asp:Label ID="LblPsId" runat="server" Text='<% # Eval("PostId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:CheckBox ID="CkSts" OnCheckedChanged="CkSts_CheckedChanged1" Checked='<%# Eval("Status") == DBNull.Value ? false : Eval("Status") %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
            <script type="text/javascript">
                $("body").on("click", "#btnExport", function () {
                    html2canvas($('[id*=GVShortList]')[0], {
                        onrendered: function (canvas) {
                            var data = canvas.toDataURL();
                            var docDefinition = {
                                content: [{
                                    image: data,
                                    width: 500
                                }]
                            };
                            pdfMake.createPdf(docDefinition).download("ShortList.pdf");
                        }
                    });
                });
            </script>
        </div>
        <div align="center">
            <asp:Button ID="BtnDone" Width="30%" runat="server" Text="Done" CssClass="center" OnClick="BtnDone_Click" />
            <asp:Button ID="BtnBack" Width="30%" runat="server" Text="Back" CssClass="center " OnClick="BtnBack_Click1" />
            <input type="button" id="btnExport" value="Export To Pdf" />
        </div>
    </form>
</body>
</html>
