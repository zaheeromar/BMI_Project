using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private String genderSelected;
    private double age;
    private double height;
    private double weight;
    private double BMI;

    protected void Button1_Click(object sender, EventArgs e)
    {
        genderSelected = RadioButtonList1.SelectedValue;
        age = getData(ageTextBox);
        height = getData(heightTextBox);
        weight = getData(weightTextBox);
        BMI = Math.Round((weight / height) / height, 2);
        calculateBMI();
        
        ClientScript.RegisterStartupScript(GetType(), "draw", "draw('" + height + "','" + weight + "','" + BMI + "')", true);

    }

    private double getData(TextBox txtBoxValue)
    {
        if (!string.IsNullOrWhiteSpace(txtBoxValue.Text))
        {
            return double.Parse(txtBoxValue.Text);
        }
        else
        {
            txtBoxValue.Text = "0";
            return 0;
        }
    }

    public void calculateBMI()
    {
        Output.Text = "Gender: " + genderSelected + "<br/>Age: " + age + "<br/><b>BMI: " + BMI + "</b>";
        Image1.Visible = true;
    }
}