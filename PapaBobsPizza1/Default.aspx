<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PapaBobsPizza1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #CC3300;
            font-size: larger;
        }
        .auto-style2 {
            font-size: larger;
        }
        .auto-style3 {
            color: #000000;
            font-size: medium;
        }
        .auto-style4 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif">
        <h1 style="font-family: Arial, Helvetica, sans-serif">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/PapaBob.png" />
&nbsp;Papa Bob&#39;s Pizza and software</h1>
        <br />
        <asp:RadioButton ID="smallRadioButton" runat="server" GroupName="pizzaSize" Text="Baby Bob Size (10&quot;) - $10" />
        <br />
        <asp:RadioButton ID="mediumRadioButton" runat="server" GroupName="pizzaSize" Text="Mama Bob Size (13&quot;) - $13" />
        <br />
        <asp:RadioButton ID="largeRadioButton" runat="server" GroupName="pizzaSize" Text="Papa Bob Size (16&quot;) - $16" />
        <br />
        <br />
        <asp:RadioButton ID="thinCrustRadioButton" runat="server" Checked="True" GroupName="pizzaCrust" Text="Thin Crust" />
        <br />
        <asp:RadioButton ID="deepDishRadioButton" runat="server" GroupName="pizzaCrust" Text="Deep Dish (+$2)" />
        <br />
        <br />
        <asp:CheckBox ID="pepperoniCheckBox" runat="server" Text="Pepperoni (+$1.50)" />
        <br />
        <asp:CheckBox ID="onionsCheckBox" runat="server" Text="Onions (+$0.75)" />
        <br />
        <asp:CheckBox ID="greenPeppersCheckBox" runat="server" Text="Green Peppers (+$0.50)" />
        <br />
        <asp:CheckBox ID="redPeppersCheckBox" runat="server" Text="Red Peppers (+$0.75)" />
        <br />
        <asp:CheckBox ID="anchoviesCheckBox" runat="server" Text="Anchovies (+$2)" />
        <br />
        <br />
        <span class="auto-style2"><strong>Papa Bob&#39;s </strong></span><strong><span class="auto-style1">Special Deal<br />
        <br />
        </span></strong><span class="auto-style3">Save $2.00 when you add Pepperoni, Green Peppers, and Anchovies OR Pepperoni, Red Peppers, and Onions to you pizza.</span><br />
        <br />
        <asp:Button ID="purchaseButton" runat="server" OnClick="purchaseButton_Click" Text="Purchase" />
        <br />
        <br />
        <asp:Label ID="totalLabel" runat="server"></asp:Label>
        <br />
        <br />
        Sorry, at this time you can only or<span class="auto-style4">der one pizza</span> online, and pick-up only... We need a better website!</form>
</body>
</html>
