<%@ Page Title="" Language="C#" MasterPageFile="~/Attendance/Attendance.Master" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="FinalP.Attendance.Attendance1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css" />
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
    <script type="text/javascript">  
        $(document).ready(function () {
            $("#GridView1").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <b>Import the attendance</b><br />

    <asp:Label runat="server" Text="Choose Excel File"></asp:Label>

    <asp:FileUpload ID="FileUpload1" runat="server" />

    <asp:Button ID="BtnUpload" runat="server" CssClass="btn " Text="Upload" OnClick="BtnUpload_Click" />

    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>

     <asp:Button ID="BtnSave" runat="server" CssClass="btn " Text="Save" OnClick="BtnSave_Click" />


</asp:Content>
