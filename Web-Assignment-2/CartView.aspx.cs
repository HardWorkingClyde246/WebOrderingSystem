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

                int orderID = 1;
                string strGetFoodName = "select f.FoodLabel from Orders o inner join Food f on o.FoodId = f.FoodId where OrderID =" + orderID;
                SqlCommand cmdRtr1;
                cmdRtr1 = new SqlCommand(strGetFoodName, con);
                string foodName = cmdRtr1.ExecuteScalar().ToString();
                lblFoodLabel.Text = foodName;

                string strGetQuantity = "select Quantity from Orders o where OrderID = " + orderID;
                SqlCommand cmdRtr2;
                cmdRtr2 = new SqlCommand(strGetQuantity, con);
                string quantity = cmdRtr2.ExecuteScalar().ToString();
                lblQuantity.Text = quantity;

                string strGetFoodPrice = "select f.Price from Orders o inner join Food f on o.FoodId = f.FoodId where OrderID = " + orderID;
                SqlCommand cmdRtr3;
                cmdRtr3 = new SqlCommand(strGetFoodPrice, con);
                string foodPrice = cmdRtr3.ExecuteScalar().ToString();
                lblFoodPrice.Text = foodPrice;

                string strGetTotal = "SELECT price * quantity AS total FROM orders where OrderID = " + orderID;

                SqlCommand cmdRtr4;
                cmdRtr4 = new SqlCommand(strGetTotal, con);
                string total = cmdRtr4.ExecuteScalar().ToString();
                lblTotalPrice.Text = total;


                con.Close();

            }

        }
    }
}