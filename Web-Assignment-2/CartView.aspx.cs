using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Web_Assignment_2
{
    public partial class CartView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con;
                string constr = ConfigurationManager.ConnectionStrings["ConnectionStringA"].ConnectionString;
                con = new SqlConnection(constr);
                con.Open();

                //int orderID = (int)Session["ssOrderID"];
                int orderID = 1; // stub testing
                
                string strGetTotalPrice = " select(MenuItem.Price * OrderDetails.Quantity)As TotalSales from OrderDetails join MenuItem on MenuItem.MenuItemID = OrderDetails.MenuItemID where OrderDetails.OrderID = " + orderID;
                SqlCommand cmdRtr1;
                cmdRtr1 = new SqlCommand(strGetTotalPrice, con);
                string totalPrice = cmdRtr1.ExecuteScalar().ToString();
                lblTotalPrice.Text = "Subtotal = "+ totalPrice;

               


                con.Close();

            }

        }
    }
}