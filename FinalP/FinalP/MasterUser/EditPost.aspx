<%@ Page Title="" Language="C#" MasterPageFile="~/MasterUser/MUMaster.Master" AutoEventWireup="true" CodeBehind="EditPost.aspx.cs" Inherits="FinalP.Master.EditPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Edit Post Details</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style1">                    
                    <tr>
                        <td>
                            <asp:GridView ID="GvAvlPost" HorizontalAlign="Center" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="PostID">
                                        <ItemTemplate>
                                            <asp:Label ID="LblPostId" runat="server" Text='<% # Eval("PostId") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PostName">
                                        <ItemTemplate>
                                            <asp:Label ID="LblPostName" runat="server" Text='<% # Eval("PostName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="SkillId">
                                        <ItemTemplate>
                                            <asp:Label ID="LblSkillId" runat="server" Text='<% # Eval("SkillId") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ExpErienceRequired">
                                        <ItemTemplate>
                                            <asp:Label ID="LblExpReq" runat="server" Text='<% # Eval("ExpErienceRequired") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="AcademicQualification">
                                        <ItemTemplate>
                                            <asp:Label ID="LblQuali" runat="server" Text='<% # Eval("AcademicQualification") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label ID="LblStatus" runat="server" Text='<% # Eval("Status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td class="style6">Post Name:</td>
                        <td class="style9">
                            <asp:TextBox ID="TBPName" runat="server"></asp:TextBox>
                        </td>
                        <td class="style6">Skill Type:</td>
                        <td class="style9">
                           <asp:DropDownList ID="DdlSkill" runat="server" AutoPostBack="True" DataTextField="SkillType" DataValueField="SkillId"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">Experience Required:</td>
                        <td class="style9">
                            <asp:TextBox ID="TBExpReq" runat="server"></asp:TextBox>
                        </td>
                        <td class="style6">AcademicQualification:</td>
                        <td class="style9">
                           <asp:TextBox ID="TBQuali" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td >&nbsp;</td>
                        <td class="style6">
                            Status
                        </td>
                        <td class="style6">
                            <asp:DropDownList ID="DdlStatus" AutoPostBack="True" runat="server">
                            <asp:ListItem Selected="True" Value="-1">Select Job Status</asp:ListItem>
                            <asp:ListItem Value="true" Text="Active"> </asp:ListItem>
                            <asp:ListItem Value="false" Text="Deactive"></asp:ListItem>
                        </asp:DropDownList>
                        </td>                       
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Button ID="BtnInsert" Width="100%" runat="server" Text="AddPost" OnClick="BtnInsert_Click" />
                        </td>
                        <td class="style6">
                            <asp:Button ID="BtnUpdate" Width="100%" runat="server" Text="UpdatePost" OnClick="BtnUpdate_Click" />
                        </td>
                        <td class="style6">
                            <asp:Button ID="BtnDelete" Width="100%" runat="server" Text="DeletePost" OnClick="BtnDelete_Click" />
                        </td>
                        <td class="style6">
                            <asp:Button ID="BtnReact" Width="100%" runat="server" Text="ReactivatePost" OnClick="BtnReact_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>                   
    
</asp:Content>
