<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-image: url('http://localhost:49820/images/background.jpg'); background-size:cover; background-repeat: no-repeat; background-attachment: fixed;">
<head runat="server">
    <title>Shopping Cart</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: auto; margin-right: auto; text-align: center; height: auto; height: auto; font-size: large; margin-bottom: 449px; width: 600px; background-color: #FFFFFF;">
            <h1 style="border: thin double #000000; text-align: center; background-color: #990000; color: #FFFFFF;">Groceries Are Us</h1>
            <hr />
            <div style="background-color: #003300; border: thin solid #000000; color: #FFFFFF; width: 450px; text-align:center; margin-left: auto; margin-right: auto; text-align: center; height: auto;">
            <br />
            <asp:Label ID="Label1" runat="server"  HorizontalAlign="Center" Text="There are 0 items in your cart"></asp:Label>
            <p>Add the Items to Shopping Cart:</p>
            <asp:CheckBoxList ID="CheckedList" runat="server" style="margin-bottom: 20px" AutoPostBack="false" CellPadding="5"
                CellSpacing="5" Height="146px" RepeatColumns="1" 
                RepeatDirection="Vertical" RepeatLayout="Flow" TextAlign="Right" Width="128px">
            </asp:CheckBoxList>
            </div>
            <hr />
            <asp:Button ID="BtnSubmit" runat="server" style="margin-bottom: 20px" OnClick="BtnSubmit_Click" Text="Add to Cart" />
            <asp:Button ID="ViewCart" runat="server" style="margin-left: 20px; margin-top: 20px; margin-bottom:20px"  OnClick="BtnView_Click" Text="View Cart" />
        </div>
    </form>
</body>
</html>
