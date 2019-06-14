<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title>Vacancy Details</title>   
    <style>
        .center
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
        <asp:Panel ID="PnlJobDetails" runat="server">
            <asp:Label ID="Label1"  runat="server" CssClass="center" Text="New Job Order" ></asp:Label>
            <br /><br />
            <asp:Label ID="Label2"  runat="server" Text="Position" ></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label3"  runat="server" Text="Skill" ></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label4"  runat="server" Text="Open Date" ></asp:Label>
            <br /><br />
            <asp:Label ID="Label5"  runat="server" Text="Close Date" ></asp:Label>
            <br /><br />
            <asp:Label ID="Label6"  runat="server" Text="Experience Required" ></asp:Label>

            <br /><br />
            <asp:Label ID="Label7"  runat="server" Text="Level" ></asp:Label>
            <br /><br />
            <asp:Label ID="Label8"  runat="server" Text="Number of Vacancy" ></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label9"  runat="server" Text="Job Description" ></asp:Label>
                <textarea id="TextArea1" cols="20" rows="2"></textarea>
        </asp:Panel>
    </form>
</body>
</html>
