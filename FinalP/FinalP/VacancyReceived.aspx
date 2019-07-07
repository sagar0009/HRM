<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="VacancyReceived.aspx.cs" Inherits="FinalP.VacancyReceived" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="header">
            <h1>Received Applications</h1>
        </div>
        <div class="center">
            <asp:TextBox ID="TBSearch" Width="40%" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:DropDownList ID="DDSearch" width="25%" runat="server"></asp:DropDownList>
            &nbsp;&nbsp;
            <asp:Button ID="BtnSearch" width="20%" runat="server" Text="Search" />
        </div>
        <div class="center">
            <asp:GridView ID="GVAppRec" runat="server" CssClass="center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField HeaderText="ReceivalID" DataField="ReceivalId" />
                    <asp:BoundField HeaderText="ApplicantID" DataField="ApplicantId" />
                    <asp:BoundField HeaderText="FirstName" DataField="Fname"/>
                    <asp:BoundField HeaderText="LastName" DataField="Lname"/>                    
                    <asp:BoundField HeaderText="PostID" DataField="PostId"/>
                   
                    <asp:TemplateField HeaderText="Status">                        
                        <ItemTemplate >
                            <asp:CheckBox ID="CkSts" OnCheckedChanged="CheckBox1_CheckedChanged" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>                                        
                </Columns>               
            </asp:GridView>                        
        </div>
        <div align="center" >
            <asp:Button ID="BtnDone" width="30%"  runat="server" Text="Done" CssClass="center " OnClick="BtnDone_Click" />
            <asp:Button ID="BtnBack" width="30%"  runat="server" Text="Back" CssClass="center " OnClick="BtnBack_Click" />
        </div>
    </form>
</asp:Content>
