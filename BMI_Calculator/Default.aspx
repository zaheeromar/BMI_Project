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
    <script src="../Scripts/canvasjs.min.js"></script>
    <script src="../Scripts/chartScript.js"></script>
</head>

<body>
    <div class ="container heading">
        <div class ="jumbotron">
            <h1><b>- Body Mass Index Calculator -</b></h1><br />
        </div>
     </div>

    <form id="form1" runat="server">
       <div class ="container content">
        <div class="col-sm-3">
            
            <asp:Label ID="genderLabel" runat="server" Text="Select your gender:"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="Male">Male</asp:ListItem>
            <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:RadioButtonList><br />
            
            <asp:ValidationSummary ID="vs" runat="server" CssClass="alert-danger" HeaderText="Enter only digits in the following fields:" BorderStyle="Solid" BorderWidth="2px" BorderColor="Red" />
            
            <asp:Label ID="ageLabel" runat="server" Text="Enter age:"></asp:Label><br />
            <asp:TextBox ID="ageTextBox" runat="server" CssClass ="textbox" Width="75px"></asp:TextBox><br />
            <asp:CompareValidator ID="cvageTextBox" runat="server" ControlToValidate="ageTextBox" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Age" Display="Static" CssClass="text-danger"></asp:CompareValidator>
            
            <br /><asp:Label ID="heightLabel" runat="server" Text="Enter height in meters: "></asp:Label><br />
            <asp:TextBox ID="heightTextBox" runat="server" CssClass ="textbox" Width="75px"></asp:TextBox><br />
            <asp:CompareValidator ID="cvheightTextBox" runat="server" ControlToValidate="heightTextBox" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Height" Display="Static" CssClass="text-danger"></asp:CompareValidator>
            

            <br /><asp:Label ID="weightLabel" runat="server" Text="Enter weight in kilograms: "></asp:Label><br />
            <asp:TextBox ID="weightTextBox" runat="server" CssClass ="textbox" Width="75px"></asp:TextBox><br />
            <asp:CompareValidator ID="cvweightTextBox" runat="server" ControlToValidate="weightTextBox" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Weight" Display="Static" CssClass="text-danger"></asp:CompareValidator>
            
            <br /><asp:Button ID="Calculate" runat="server" Text="Calculate" cssclass="btn-primary" OnClick="Button1_Click" /><br />
        </div>

        <div class="col-sm-5">
            <div class ="model text-center">
                <asp:Label ID="Output" runat="server" Text=""></asp:Label>
                <br />
            </div>
            <div class="container image">
                <asp:Image ID="Image1" runat="server" Height="315px"  Width="415px" ImageUrl="~/images/BMI_chart.gif" Visible="false" align="middle"/>
            </div>
        </div>

        <div class="col-sm-4">
            <div id="noDataPlaceholder" class="h1"></div>
            <div id="chartContainer" style="height: 375px; width: 100%;"></div>
            <div class="text-center" >
                <asp:Label ID="smallPrint" runat="server" Text="*Height and Weight displayed as ratios" Font-Size="Smaller" Visible="False"></asp:Label>
            </div>
            <div id="chartPlaceholder"></div>
        </div>
      </div>
    </form>
</body>
</html>