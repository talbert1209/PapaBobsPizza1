using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PapaBobsPizza1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void purchaseButton_Click(object sender, EventArgs e)
        {
            decimal basePrice;
            decimal toppingPrice = 0;
            decimal discount = 0;

            // Base pizza
            if (smallRadioButton.Checked)
            {
                basePrice = 10m;
            }
            else if (mediumRadioButton.Checked)
            {
                basePrice = 13m;
            }
            else if (largeRadioButton.Checked)
            {
                basePrice = 16m;
            }
            else
            {
                totalLabel.Text = "Please select a pizza size.";
                return;
            }

            // Crust option
            decimal crustPrice = deepDishRadioButton.Checked ? 2 : 0;

            // Toppings
            if (pepperoniCheckBox.Checked) toppingPrice += 1.50m;

            if (onionsCheckBox.Checked) toppingPrice += .75m;

            if (greenPeppersCheckBox.Checked) toppingPrice += .50m;

            if (redPeppersCheckBox.Checked) toppingPrice += .75m;

            if (anchoviesCheckBox.Checked) toppingPrice += 2m;

            // Discount
            if (pepperoniCheckBox.Checked && greenPeppersCheckBox.Checked && anchoviesCheckBox.Checked ||
                pepperoniCheckBox.Checked && redPeppersCheckBox.Checked && onionsCheckBox.Checked)
                discount = 2m;

            //Calculating total
            var totalPrice = basePrice + crustPrice + toppingPrice - discount;
            totalLabel.Text = $"Total: {totalPrice:C}";
        }
    }
}