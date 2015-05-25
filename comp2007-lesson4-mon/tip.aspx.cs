using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2007_lesson4_mon
{
    public partial class tip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //calculate tip
            Decimal tip = Convert.ToDecimal(txtAmount.Text) * Convert.ToDecimal(ddlPercent.SelectedValue);

            //display tip
            lblTip.Text = tip.ToString("c");

            //calculate total
            Decimal total = tip + Convert.ToDecimal(txtAmount.Text);

            //display total
            lblTotal.Text = total.ToString("c");

        }
    }
}