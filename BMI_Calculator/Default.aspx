<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="../css/StyleSheet.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
    <div class ="container">
        <div class ="jumbotron">
                <h1>BMI Calculator</h1><br />
        </div>
        <div class="col-sm-4">
            <asp:Label ID="genderLabel" runat="server" Text="Please select your gender:"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:RadioButtonList><br />
        
            <asp:Label ID="ageLabel" runat="server" Text="Enter age:"></asp:Label><br />
            <asp:TextBox ID="ageTextBox" runat="server"></asp:TextBox><br />

            <br /><asp:Label ID="heightLabel" runat="server" Text="Enter height in meters: "></asp:Label><br />
            <asp:TextBox ID="heightTextBox" runat="server"></asp:TextBox><br />

            <br /><asp:Label ID="weightLabel" runat="server" Text="Enter weight in kilograms: "></asp:Label><br />
            <asp:TextBox ID="weightTextBox" runat="server"></asp:TextBox><br />

            <br /><asp:Button ID="Calculate" runat="server" Text="Calculate" cssclass="btn-primary" OnClick="Button1_Click" /><br />
        </div>
        <div class="col-sm-4">
            <br /><asp:Label ID="Output" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl="~/images/h9991024.gif" Width="350px" Visible="False" />
        </div>
      </div>
    </form>
</body>
</html>