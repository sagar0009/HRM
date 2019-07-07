<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Interview.aspx.cs" Inherits="FinalP.Interview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="header">
            <h1>Interview Calls</h1>
        </div>        
        <div class="center">              
             <div class="center">             
            <asp:GridView ID="GVInterview" runat="server" CssClass="center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField HeaderText="ReceivalID" DataField="ReceivalId" />
                    <asp:BoundField HeaderText="ApplicantID" DataField="ApplicantId" />
                    <asp:BoundField HeaderText="FirstName" DataField="Fname"/>
                    <asp:BoundField HeaderText="LastName" DataField="Lname"/>                    
                    <asp:BoundField HeaderText="PostID" DataField="PostId"/>
                   
                    <asp:TemplateField HeaderText="Status">                        
                        <ItemTemplate >
                            <asp:CheckBox ID="CkSts" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>                                        
                </Columns>               
            </asp:GridView>  
        </div>
        </div>
       <div align="center" >
            <asp:Button ID="BtnDone" width="30%" OnClick="BtnDone_Click"  runat="server" Text="Done" CssClass="center"/>
            <asp:Button ID="BtnBack" width="30%" OnClick="BtnBack_Click"  runat="server" Text="Back" CssClass="center "  />
        </div>
    </form>
</asp:Content>
