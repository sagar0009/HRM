<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="VacancyDetails.aspx.cs" Inherits="FinalP.VacancyDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="header">
            <h1>New Job Details</h1>

        </div>
        <div >
        <asp:Table ID="Table1" runat="server"  CssClass="center">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Post</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                    <asp:DropDownList ID="DDPost" runat="server" OnSelectedIndexChanged="DDPost_SelectedIndexChanged" AutoPostBack="True" DataTextField="PostName" DataValueField="PostId"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>            
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Skills Required</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                    <asp:Label ID="LblSkills" BorderWidth="1px" runat="server" ></asp:Label>                   
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Open Date</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                   <asp:TextBox ID="TBOpenDate" runat="server" ReadOnly="true"></asp:TextBox>&nbsp;  
                    <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Images/Cal.png" Height="15px" OnClick="ImageButton1_Click"/>   
                     <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Selection_Change"></asp:Calendar>                                      
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">End Date</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                     <asp:TextBox ID="TBEndDate" runat="server" ReadOnly="true" ></asp:TextBox>&nbsp;  
                    <asp:ImageButton ID="ImageButton2" runat="server"  ImageUrl="~/Images/Cal.png" Height="15px" OnClick="ImageButton2_Click"/>   
                     <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Selection1_Change"></asp:Calendar>                                      
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Experience Required</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                    <asp:Label ID="LblExperience" BorderWidth="1px" runat="server" Text=""></asp:Label>                     
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Educational Qualification</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                    <asp:Label ID="LblQual" BorderWidth="1px" runat="server" Text=""></asp:Label>                                         
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Salary</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                    <asp:Label ID="LblSalary" BorderWidth="1px" runat="server" Text=""></asp:Label>     
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Job Type</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                    <asp:DropDownList ID="DdlJobType" runat="server" OnSelectedIndexChanged="DdlJobType_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Selected="True" Value="-1">Select Job Type</asp:ListItem>
                        <asp:ListItem Value="1" Text="Part-Time" >
                            </asp:ListItem>
                        <asp:ListItem Value="2" Text="Full-Time"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Number Of Vacancies</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                     <asp:TextBox ID="TBNoVacancy" runat="server"></asp:TextBox>                    
                </asp:TableCell>
            </asp:TableRow>          
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">
                    <asp:Button ID="BtnSubmit" runat="server" Text="Done" width="50%" OnClick="BtnSubmit_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                     <asp:Button ID="BtnBack" runat="server" Text="Cancel" Width="30%"  OnClick="BtnBack_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            
        </asp:Table>
        </div>
    </form>
</asp:Content>
