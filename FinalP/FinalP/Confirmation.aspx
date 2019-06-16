<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="FinalP.Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <p> Congratulations!!!</p>
            <p> You have successfully applied for the post <asp:Label ID="Label1" runat="server" ></asp:Label> on <asp:Label ID="Label2" runat="server" ></asp:Label></p>
            <p>Details is sent in email <asp:Label ID="Label3" runat="server" ></asp:Label> as you have provided in login.</p>
            <p> Stay Connected !</p>
        </div>
    </form>
</asp:Content>
