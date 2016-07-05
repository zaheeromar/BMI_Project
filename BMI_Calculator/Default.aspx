<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>BMI Calculator</h1><br />

        <asp:Label ID="genderLabel" runat="server" Text="Please select your gender:"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="Male">Male</asp:ListItem>
            <asp:ListItem Value="Female">Female</asp:ListItem>
        </asp:RadioButtonList><br />
        
        <asp:Label ID="ageLabel" runat="server" Text="Enter your age:"></asp:Label>
        <asp:TextBox ID="ageTextBox" runat="server"></asp:TextBox><br />

        <br /><asp:Label ID="heightLabel" runat="server" Text="Enter your height in meters: "></asp:Label>
        <asp:TextBox ID="heightTextBox" runat="server"></asp:TextBox><br />

        <br /><asp:Label ID="weightLabel" runat="server" Text="Enter your weight in kilograms: "></asp:Label>
        <asp:TextBox ID="weightTextBox" runat="server"></asp:TextBox><br />



        <br /><asp:Button ID="Calculate" runat="server" Text="Calculate" OnClick="Button1_Click" /><br />
        <br /><asp:Label ID="Output" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>