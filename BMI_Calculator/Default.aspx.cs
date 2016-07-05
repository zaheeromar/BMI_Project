using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    protected void Button1_Click(object sender, EventArgs e)
    {
        String genderSelected = RadioButtonList1.SelectedValue;
        int age = Int32.Parse(ageTextBox.Text);
        double height = Double.Parse(heightTextBox.Text);
        double weight = Double.Parse(weightTextBox.Text);
        double BMI = Math.Round((weight / height) / height, 2);


        Output.Text = "You are a " + genderSelected + " of age " + age + " and your BMI is :" + BMI;
    }
}