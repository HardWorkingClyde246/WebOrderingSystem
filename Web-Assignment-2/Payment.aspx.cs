using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment_2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PaymentPlaceOrderbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ItemView.aspx");
        }
    }
}