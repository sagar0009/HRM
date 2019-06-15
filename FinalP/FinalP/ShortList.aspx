<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShortList.aspx.cs" Inherits="FinalP.ShortList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ShortList</title>
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
            <h1>Application ShortList</h1>
        </div>        
        <div class="center">
            <asp:GridView ID="GVShortList" runat="server" CssClass="center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <Columns>
                    <asp:BoundField HeaderText="ApplicantID" />
                    <asp:BoundField HeaderText="VacancyID" />
                    <asp:CheckBoxField HeaderText="Status" />
                </Columns>               
            </asp:GridView>                        
        </div>
        <div align="center" >
            <asp:Button ID="BtnBack" width="20%"  runat="server" Text="Back" CssClass="center " OnClick="BtnBack_Click" />
        </div>
    </form>
</body>
</html>
