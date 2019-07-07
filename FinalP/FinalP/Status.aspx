<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Status.aspx.cs" Inherits="FinalP.Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="header">
            <h1>Status</h1>
        </div>        
        <div class="center">                                    
        </div>
         <asp:GridView ID="GVStatus" runat="server" CssClass="center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField HeaderText="ReceivalID" DataField="ReceivalId" />
                    <asp:BoundField HeaderText="ApplicantID" DataField="ApplicantId" />
                    <asp:BoundField HeaderText="FirstName" DataField="Fname"/>
                    <asp:BoundField HeaderText="LastName" DataField="Lname"/>                    
                    <asp:BoundField HeaderText="PostID" DataField="PostId"/>                                                                              
                </Columns>               
            </asp:GridView>  
       <div align="center" >
            <asp:Button ID="BtnDone" width="30%"  runat="server" Text="Done" OnClick="BtnDone_Click" CssClass="center"/>
            <asp:Button ID="BtnBack" width="30%"  runat="server" Text="Back" OnClick="BtnBack_Click" CssClass="center "  />
        </div>
    </form>
</asp:Content>
