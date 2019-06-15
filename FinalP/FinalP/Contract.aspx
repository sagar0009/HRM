<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contract.aspx.cs" Inherits="FinalP.Contract" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contract</title>
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
            
            padding: 10px;
            font:bold 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Contract</h1>
        </div> 
        <div>



        </div>
        <div align="center" >
            <asp:Button ID="BtnBack" width="20%"  runat="server" Text="Back" CssClass="center " OnClick="BtnBack_Click" />
        </div>
    </form>
</body>
</html>
