using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private String genderSelected;
    private int age;
    private double height;
    private double weight;
    private double BMI;

    protected void Button1_Click(object sender, EventArgs e)
    {
        genderSelected = RadioButtonList1.SelectedValue;
        age = Int32.Parse(ageTextBox.Text);
        height = Double.Parse(heightTextBox.Text);
        weight = Double.Parse(weightTextBox.Text);
        BMI = Math.Round((weight / height) / height, 2);
        calculateBMI();

        ClientScript.RegisterStartupScript(GetType(), "draw", "true");

    }

    public void calculateBMI()
    {
        Output.Text = "Gender: " + genderSelected + "<br/>Age: " + age + "<br/><b>BMI: " + BMI + "</b>";
        Image1.Visible = true;
    }
}