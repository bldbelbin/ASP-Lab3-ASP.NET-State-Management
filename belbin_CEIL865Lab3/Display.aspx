<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Display.aspx.cs" Inherits="Display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #FCE49C; margin-left: auto; margin-right: auto; text-align: center;" >
            <h1 style="border: thin double #000000; text-align: center; background-color: #990000; color: #FFFFFF;">Get the Best Deal On-Line</h1>
            <hr style="background-color: #000000" />
            <asp:Label ID="Label1" runat="server" HorizontalAlign="Center" Text="There are 0 items in your cart"></asp:Label>
             <asp:GridView ID="CheckOut" style="margin-top: 50px" AutoGenerateColumns="false" runat="server" Width="379px" BackColor="White" BorderColor="Black" HorizontalAlign="Center" BorderStyle="Solid" Height="361px">
                <Columns>
                    <asp:BoundField dataField="Key" HeaderText="Item(s)"/>
                    <asp:BoundField dataField="Value"  HeaderText="Quantity" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="BackButton" runat="server" style="margin-bottom:20px" OnClick="Back_Click" Text="Keep Shopping" />
            <asp:Button ID="ClearButton" runat="server" style="margin-left: 20px; margin-top: 20px; margin-bottom: 20px" OnClick="Clear_Click" Text="Clear" />
        </div>
    </form>
</body>
</html>
