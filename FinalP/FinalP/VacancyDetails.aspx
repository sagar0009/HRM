<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VacancyDetails.aspx.cs" Inherits="FinalP.VacancyDetails" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vacancy Details</title>
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
            border: 3px solid #73AD21;
            padding: 10px;
            font:bold 12px;
        }
        .right
        {
            margin: auto;
            width: 60%;
            border: 3px solid #73AD21;
            padding: 10px;
        }

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>New Job Details</h1>

        </div>
        <div >

      
        <asp:Table ID="Table1" runat="server"  CssClass="center">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Post</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                    <asp:DropDownList ID="DDPost" runat="server"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Post ID</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                    <asp:TextBox ID="TBPostID" runat="server" ReadOnly="true"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Skill</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                     <asp:TextBox ID="TBSkill" runat="server"></asp:TextBox>
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
                     <asp:TextBox ID="TBExperience" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Level</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                    <asp:DropDownList ID="DDLevel" runat="server"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Salary</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                    <asp:TextBox ID="TBSalary" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Number Of Vacancies</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                     <asp:TextBox ID="TBNoVacancy" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">Job Description</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                    <textarea id="TADescriptions" rows="4" cols="20"></textarea>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">
                    <asp:Button ID="BtnSubmit" runat="server" Text="Done" width="50%" OnClick="Btn1Submit_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                     <asp:Button ID="BtnBack" runat="server" Text="Cancel" Width="30%"  OnClick="Btn2Submit_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            
        </asp:Table>
        </div>
    </form>
</body>
</html>
