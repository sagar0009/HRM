<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage/UPMaster.Master" AutoEventWireup="true" CodeBehind="SalaryDetails.aspx.cs" Inherits="FinalP.UserPage.SalaryDetails" %>

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

        .st {
            width: 186px;
            text-align: right;
        }

        .hdleft {
            text-align: left;
            color: darkblue;
            width: 250px;
        }

        }

        .hdrt {
            text-align: left;
            color: darkblue;
            width: 186px;
        }

        .auto-style1 {
            width: 92px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="tbl">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="lbl">Year :
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlYear" runat="server" CssClass="txt"
                                AutoPostBack="true">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>
                                <asp:ListItem>2019</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" InitialValue="SELECT"
                                ControlToValidate="DdlYear" ErrorMessage="Enter the year" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style5">&nbsp;</td>
                        <td>&nbsp;</td>

                    </tr>
                    <tr>
                        <td class="lbl">Month :
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlMonth" runat="server" CssClass="txt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="DdlMonth" ErrorMessage="Select month" ForeColor="Red"
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnSelect" runat="server" CssClass="btn" Text="SELECT"
                    OnClick="BtnSelect_Click" Width="104px" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl" runat="server" ForeColor="#006600"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table style="width: 100%">
                            <tr>
                                <td class="tblhead">General Details</td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFCC">
                                    <table class="style3">
                                        <tr>
                                            <td class="style6">Full Name : </td>
                                            <td class="style9">
                                                <asp:Label ID="LblFname" runat="server"></asp:Label>
                                            </td>
                                            <td class="style6">Email : </td>
                                            <td>
                                                <asp:Label ID="LblEm" runat="server"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Gender :</td>
                                            <td class="style9">
                                                <asp:Label ID="LblGender" runat="server"></asp:Label>
                                            </td>
                                            <td class="style6">MaritalStatus : </td>
                                            <td>
                                                <asp:Label ID="LblMar" runat="server"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Address :</td>
                                            <td class="style9">
                                                <asp:TextBox ID="TBAdd" runat="server" Rows="2" Columns="15" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                            <td class="style6">Mobile : </td>
                                            <td>
                                                <asp:Label ID="LblMob" runat="server"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">Department:</td>
                                            <td class="style9">
                                                <asp:Label ID="LblDept" runat="server"></asp:Label>
                                            </td>
                                            <td class="style6">Position : </td>
                                            <td>
                                                <asp:Label ID="LblPost" runat="server"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">CIT No. :</td>
                                            <td class="style9">
                                                <asp:Label ID="LblCitN" runat="server"></asp:Label>
                                            </td>
                                            <td class="style6">CIT % : </td>
                                            <td>
                                                <asp:Label ID="LblCitPer" runat="server"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">PF No.:</td>
                                            <td class="style9">
                                                <asp:Label ID="LblPfN" runat="server"></asp:Label>
                                            </td>
                                            <td class="style6">PF % : </td>
                                            <td>
                                                <asp:Label ID="LblPfPer" runat="server"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">PAN :</td>
                                            <td class="style9">
                                                <asp:Label ID="LblPan" runat="server"></asp:Label>
                                            </td>
                                            <td class="style6">Bank Name : </td>
                                            <td>
                                                <asp:Label ID="LblBank" runat="server"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Button ID="BtnDet" runat="server" Text="Salary Details" OnClick="BtnDet_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">

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
                                                    pdfMake.createPdf(docDefinition).download("SalaryDetails.pdf");
                                                }
                                            });
                                        });
                                    </script>

                        <div id="MyDet" runat="server">
                            <table style="width: 100%" border="1">
                                <tr>
                                    <td class="tblhead">Salary Details</td>
                                </tr>
                                <tr>

                                    <td class="style6">Account Number :</td>
                                    <td class="style9">
                                        <asp:Label ID="LblAccNo" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6">Total working Days</td>
                                    <td class="style9">
                                        <asp:Label ID="LblTotWD" runat="server">0</asp:Label>
                                    </td>
                                    <td class="style6">Total Leave :</td>
                                    <td class="style9">
                                        <asp:Label ID="LblLeave" runat="server">0</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="hdleft">Addition(+) </td>
                                    <td class="hdrt">Amount 
                                    </td>
                                    <td class="hdleft">Deduction(-)</td>
                                    <td class="hdrt">Amount
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style6">Basic Pay :</td>
                                    <td class="st">
                                        <asp:Label ID="LblBpay" runat="server">0</asp:Label>
                                    </td>
                                    <td class="style6">PF : </td>
                                    <td class="st">
                                        <asp:Label ID="LblPf" runat="server">0</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style6">Salary :</td>
                                    <td class="st">
                                        <asp:Label ID="LblSal" runat="server">0</asp:Label>
                                    </td>
                                    <td class="style6">CIT : </td>
                                    <td class="st">
                                        <asp:Label ID="LblCit" runat="server">0</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style6">Medical Allowance:</td>
                                    <td class="st">
                                        <asp:Label ID="LblMed" runat="server">0</asp:Label>
                                    </td>
                                    <td class="style6">Leave Deduce : </td>
                                    <td class="st">
                                        <asp:Label ID="LblLveDed" runat="server">0</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style6">Lunch Allowance :</td>
                                    <td class="st">
                                        <asp:Label ID="LblLnch" runat="server">0</asp:Label>
                                    </td>
                                    <td class="style6">Tax Deduction </td>
                                    <td class="st">
                                        <asp:Label ID="LblTax" runat="server">0</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style6">Travelling Allowance:</td>
                                    <td class="st">
                                        <asp:Label ID="LblTrav" runat="server">0</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style6">PF Employeer :</td>
                                    <td class="st">
                                        <asp:Label ID="LblPfEmp" runat="server">0</asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="hdleft">Sub Total:</td>
                                    <td class="hdrt">
                                        <asp:Label ID="LblSubAdd" runat="server">0</asp:Label>
                                    </td>
                                    <td class="hdleft">Sub Total:</td>
                                    <td class="hdrt">
                                        <asp:Label ID="LblSubDed" runat="server">0</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="hdleft" >Net Salary:</td>
                                    <td class="hdleft">
                                        <asp:Label ID="LblNetSal" runat="server">0</asp:Label>
                                    </td>
                                    <td>
                                        <input id="BtnPrint" type="button" value="Print" class="auto-style1" />
                                    </td>
                                    <td>
                                        <asp:Button ID="BtnBack" runat="server" Text="Back" OnClick="BtnBack_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
    </table>
</asp:Content>
