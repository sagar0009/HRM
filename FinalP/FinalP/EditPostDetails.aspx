<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPostDetails.aspx.cs" Inherits="FinalP.EditPostDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .rgt {
            text-align: right;
        }

        .lft {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GvAvlPost" HorizontalAlign="Center" runat="server" AutoGenerateColumns="False">
                <Columns>                   
                    <asp:TemplateField HeaderText="PostID">                        
                        <ItemTemplate >
                            <asp:Label ID="LblPostId" runat="server" Text='<% # Eval("PostId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PostName">                        
                        <ItemTemplate >
                            <asp:Label ID="LblPostName" runat="server" Text='<% # Eval("PostName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Salary">                        
                        <ItemTemplate >
                            <asp:Label ID="LblSalary" runat="server" Text='<% # Eval("Salary") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SkillId">                        
                        <ItemTemplate >
                            <asp:Label ID="LblSkillId" runat="server" Text='<% # Eval("SkillId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ExpErienceRequired">                        
                        <ItemTemplate >
                            <asp:Label ID="LblExpReq" runat="server" Text='<% # Eval("ExpErienceRequired") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>                   
                    <asp:TemplateField HeaderText="AcademicQualification">                        
                        <ItemTemplate >
                             <asp:Label ID="LblQuali" runat="server" Text='<% # Eval("AcademicQualification") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField> 
                     <asp:TemplateField HeaderText="Status">                        
                        <ItemTemplate >
                             <asp:Label ID="LblStatus" runat="server" Text='<% # Eval("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField> 
                </Columns>
            </asp:GridView>
        </div>
        <div>
            <asp:Table ID="Table1" BorderStyle="Solid" runat="server" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Right">
                        Post Name                    
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TBPostName" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Right">
                        Salary                      
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TBSalary" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Right">
                        SkillType
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="DdlSkill" OnSelectedIndexChanged="DdlSkill_SelectedIndexChanged" runat="server" AutoPostBack="True" DataTextField="SkillType" DataValueField="SkillId"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Right">
                       Experience Required
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TBExpReq" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Right">
                        AcademicQualification                      
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TBQuali" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Right">
                       Status                      
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="DdlStatus" OnSelectedIndexChanged="DdlStatus_SelectedIndexChanged" AutoPostBack="True" runat="server">
                            <asp:ListItem Selected="True" Value="-1">Select Job Status</asp:ListItem>
                            <asp:ListItem Value="true" Text="Active"> </asp:ListItem>
                            <asp:ListItem Value="false" Text="Deactive"></asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button ID="BtnInsert" Width="100%" runat="server" Text="AddPost" OnClick="BtnInsert_Click" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="BtnUpdate" Width="100%" runat="server" Text="UpdatePost" OnClick="BtnUpdate_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button ID="BtnDelete" Width="100%" runat="server" Text="DeletePost" OnClick="BtnDelete_Click" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="BtnReact" Width="100%" runat="server" Text="ReactivatePost" OnClick="BtnReact_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableFooterRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                         <asp:Button ID="BtnBack" Width="50%" runat="server" Text="Back" OnClick="BtnBack_Click" />
                    </asp:TableCell>
                </asp:TableFooterRow>
            </asp:Table>
        </div>

    </form>
</body>
</html>
