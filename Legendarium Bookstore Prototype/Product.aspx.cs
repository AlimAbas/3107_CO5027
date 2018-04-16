using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Legendarium_Bookstore_Prototype
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PurchaseButton_Click(object sender, EventArgs e)
        {
            decimal postagePackagingCost = 3.95m;
            decimal ProductPrice = 10.00m;
            int quantityOfProduct = int.Parse(DDLQuantity.SelectedValue);
            decimal subTotal = (quantityOfProduct * ProductPrice);
            decimal total = subTotal + postagePackagingCost;
        }
    }
}