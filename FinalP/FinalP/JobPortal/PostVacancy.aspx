<%@ Page Title="" Language="C#" MasterPageFile="Portal.Master" AutoEventWireup="true" CodeBehind="PostVacancy.aspx.cs" Inherits="FinalP.PostVacancy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="header">
            <h1> Vacancy! Vacancy! Vacancy!</h1>
        </div>
        <div  class="center" >
            <asp:Table ID="Table1" runat="server" CssClass="center1">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" visible="false"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server"> 
                    <asp:TableCell HorizontalAlign="Right">Upload CV</asp:TableCell>
                    <asp:TableCell HorizontalAlign="Left">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </asp:TableCell>
                    <%--<asp:TableCell runat="server">
                        <asp:Button ID="BtnUpload" runat="server" Text="Upload CV" OnClick="BtnUpload_Click" />
                    </asp:TableCell>--%>
                    <%-- <asp:TableCell runat="server">
                        <asp:Button ID="BtnView" runat="server" Text="View CV" OnClick="BtnView_Click" />
                    </asp:TableCell>--%>
                    <asp:TableCell runat="server">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" 
                            ForeColor="Red" Enabled="false" ErrorMessage="Upload CV"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>                    
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right">Post</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">
                        <asp:TextBox ID="TBPost" ReadOnly="true" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>               
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right">Number of Vacancy</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">
                        <asp:TextBox ID="TBPostVac" ReadOnly="true" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>                
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right">Experience Required</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">
                        <asp:TextBox ID="TBExpReq" ReadOnly="true" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right">Academic Qualification</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">
                        <asp:TextBox ID="TBQuali" ReadOnly="true" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right">Skill Required</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">
                        <asp:TextBox ID="TBSkill" ReadOnly="true" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right">Job Type</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">
                        <asp:TextBox ID="TbJobType" ReadOnly="true" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Right">Job Descriptions</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">
                        <asp:TextBox ID="TBJobDesc" TextMode="MultiLine" Rows="5" Width="400" Height="200" runat="server" ReadOnly="True"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>
        </div>
        <div class="center">                       
           <h2> Job Details</h2>            
            <p class="MsoNormal" ><span style="font-size: 14pt;"><strong><span style="font-family: Arial, sans-serif;">Benefits:</span></strong></span></p>
                <ul>
                    <li><span style="font-size: 14pt;">Salary based on skills</span></li>
                    <li><span style="font-size: 14pt;">5 working days a week</span></li>
                    <li><span style="font-size: 14pt;">16 public holidays a year</span></li>
                    <li><span style="font-size: 14pt;">12 paid holidays a year</span></li>
                    <li><span style="font-size: 14pt;">Accident and medical insurance</span></li>
                    <li><span style="font-size: 14pt;">Dashain bonus and Referral bonus</span></li>
                    <li><span style="font-size: 14pt;">Incentives based on performances</span></li>
                    <li><span style="font-size: 14pt;">Salary revisions based on performance</span></li>
                    <li><span style="font-size: 14pt;">Travel opportunity to Europe</span></li>
                </ul>
            <p class="MsoNormal"><span style="font-size: 14pt;"><strong><span style="font-family: Verdana, sans-serif;">Note:</span></strong></span></p>
            <ul>               
                <li><span style="font-size: 14pt;">Candidates who are trying abroad are discouraged to apply, we are looking for stable additions</span></li>
                <li><span style="font-size: 14pt;">Shortlisted candidates will be called for interview</span></li>
            </ul>
        </div>
        <div class="center1">
            <asp:Button ID="BtnApply" runat="server" ForeColor="White" BackColor="Blue" Width  ="30%" Text="Apply Now" OnClick="BtnApply_Click"/>
            <asp:Button ID="BtnBack" runat="server" ForeColor="White" BackColor="Blue" Width  ="30%" Text="Back" OnClick="BtnBack_Click"/>
            <%--<asp:Button ID="BtnPrint" runat="server" ForeColor="White" BackColor="Blue" Width  ="30%" Text="Download Vacancy" OnClick="BtnPrint_Click"  />--%>
        </div>
    </form>
</asp:Content>
