<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="WrittenTest.aspx.cs" Inherits="FinalP.WrittenTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="header">
            <h1>Written Test Calls</h1>
        </div>        
        <div class="center">             
            <asp:GridView ID="GVWTest" runat="server" CssClass="center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
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
                    <asp:TemplateField HeaderText="PostID">                        
                        <ItemTemplate >
                            <asp:Label ID="LblPsId" runat="server" Text='<% # Eval("PostId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>                   
                    <asp:TemplateField HeaderText="Status">                        
                        <ItemTemplate >
                            <asp:CheckBox ID="CkSts" OnCheckedChanged="CkSts_CheckedChanged" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>                                        
                </Columns>               
            </asp:GridView>  
        </div>
        <div align="center" >
            <asp:Button ID="BtnDone" width="30%"  runat="server" Text="Done" OnClick="BtnDone_Click" CssClass="center"/>
            <asp:Button ID="BtnBack" width="30%"  runat="server" Text="Back" OnClick="BtnBack_Click1" CssClass="center "/>
            <asp:Button ID="BtnExport" Width="30%" runat="server" Text="Export to pdf" CssClass="center" OnClick="BtnExport_Click" />
        </div>
    </form>
</asp:Content>
