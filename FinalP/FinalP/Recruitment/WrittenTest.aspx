<%@ Page Title="" Language="C#" MasterPageFile="RecMaster.Master" AutoEventWireup="true" CodeBehind="WrittenTest.aspx.cs" Inherits="FinalP.WrittenTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .style1 {
            width: 627px;
        }

        .style2 {
            width: 103px;
        }

        .auto-style1 {
            width: 332px;
        }

        .auto-style2 {
            width: 220px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead" colspan="2">&nbsp;Written Test Call</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <table class="style1">
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="TBSearch" runat="server" placeholder="Enter Text to Search"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="DDSearch" OnSelectedIndexChanged="DDSearch_SelectedIndexChanged" runat="server" Width="115px">
                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                <asp:ListItem>Fname</asp:ListItem>
                                <asp:ListItem>Post</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button CssClass="btn" align="center" ID="BtnSearch" OnClick="BtnSearch_Click" runat="server" Text="Search" Width="154px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GVWTest" runat="server" EmptyDataText="No Records Found" AllowPaging="false" CssClass="center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
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
            </td>
        </tr>
    </table>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>

    <script type="text/javascript">
        $("body").on("click", "#btnExport", function () {
            html2canvas($('[id*=GVWTest]')[0], {
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
   
    <div>
        <asp:Button ID="BtnDone" Width="20%" runat="server" Text="Done" CssClass="center " OnClick="BtnDone_Click" />
        <asp:Button ID="BtnBack" Width="20%" runat="server" PostBackUrl="~/DashBoard.aspx" Text="Back" CssClass="center" />
        <input type="button" style="width: 20%" id="btnExport" class="center" value="Export To Pdf" />
    </div>

       <%-- <div class="header">
            <h1>Written Test Calls</h1>
        </div> 
         <div class="center">
            <asp:TextBox ID="TBSearch" Width="40%" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:DropDownList ID="DDSearch" Width="25%" runat="server">
                <asp:ListItem Selected="True" Value="-1">Select</asp:ListItem>
                <asp:ListItem Value="1">Fname</asp:ListItem>
                <asp:ListItem Value="2">Post</asp:ListItem>
                <%--<asp:ListItem Value="3">DateOfVacancy</asp:ListItem>--%>
           <%-- </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:Button ID="BtnSearch" Width="20%" OnClick="BtnSearch_Click" runat="server" Text="Search" />
        </div>
        <div class="center">             
            <asp:GridView ID="GVWTest" runat="server" EmptyDataText="No Records Available" CssClass="center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
                <Columns>                   
                    <asp:TemplateField HeaderText="ReceivalID">                        
                        <ItemTemplate >
                            <asp:Label ID="LblRecId" runat="server" Text='<% # Eval("ReceivalId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ApplicantID">                        
                        <ItemTemplate >
                            <asp:Label ID="LblApId" runat="server" Text='<% # Eval("ApplicantId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FirstName">                        
                        <ItemTemplate >
                            <asp:Label ID="LblFname" runat="server" Text='<% # Eval("Fname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="LastName">                        
                        <ItemTemplate >
                            <asp:Label ID="LblLname" runat="server" Text='<% # Eval("Lname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Post">                        
                        <ItemTemplate >
                            <asp:Label ID="LblPsId" runat="server" Text='<% # Eval("PostName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>                   
                    <asp:TemplateField HeaderText="Status">                        
                        <ItemTemplate >
                             <asp:CheckBox ID="CkSts" OnCheckedChanged="CkSts_CheckedChanged" Checked='<%# Eval("IsWrTestPass") == DBNull.Value ? false : Eval("IsWrTestPass") %>'  runat="server" />                            
                        </ItemTemplate>
                    </asp:TemplateField>                                        
                </Columns>               
            </asp:GridView>  
            <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
            <script type="text/javascript">
                $("body").on("click", "#btnExport", function () {
                    html2canvas($('[id*=GVWTest]')[0], {
                        onrendered: function (canvas) {
                            var data = canvas.toDataURL();
                            var docDefinition = {
                                content: [{
                                    image: data,
                                    width: 400
                                }]
                            };
                            pdfMake.createPdf(docDefinition).download("WrittenTestCalled.pdf");
                        }
                    });
                });
            </script>
        </div>
        <div align="center" >
            <asp:Button ID="BtnDone" width="20%"  runat="server" Text="Done" OnClick="BtnDone_Click" CssClass="center"/>
            <asp:Button ID="BtnBack" width="20%"  runat="server" Text="Back" OnClick="BtnBack_Click1" CssClass="center "/>
            <input type="button" style="width: 20%" id="btnExport" class="center" value="Export To Pdf" />
        </div>--%>
 
</asp:Content>
